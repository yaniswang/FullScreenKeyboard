Attribute VB_Name = "modKey"
Declare Function MapPhysToLin Lib "WinIo.dll" (ByVal PhysAddr As Long, ByVal PhysSize As Long, ByRef PhysMemHandle) As Long
Declare Function UnmapPhysicalMemory Lib "WinIo.dll" (ByVal PhysMemHandle, ByVal LinAddr) As Boolean
Declare Function GetPhysLong Lib "WinIo.dll" (ByVal PhysAddr As Long, ByRef PhysVal As Long) As Boolean
Declare Function SetPhysLong Lib "WinIo.dll" (ByVal PhysAddr As Long, ByVal PhysVal As Long) As Boolean
Declare Function GetPortVal Lib "WinIo.dll" (ByVal PortAddr As Integer, ByRef PortVal As Long, ByVal bSize As Byte) As Boolean
Declare Function SetPortVal Lib "WinIo.dll" (ByVal PortAddr As Integer, ByVal PortVal As Long, ByVal bSize As Byte) As Boolean
Declare Function InitializeWinIo Lib "WinIo.dll" () As Boolean
Declare Function ShutdownWinIo Lib "WinIo.dll" () As Boolean
Declare Function InstallWinIoDriver Lib "WinIo.dll" (ByVal DriverPath As String, ByVal Mode As Integer) As Boolean
Declare Function RemoveWinIoDriver Lib "WinIo.dll" () As Boolean

Public Declare Function MapVirtualKey Lib "user32" Alias "MapVirtualKeyA" (ByVal wCode As Long, ByVal wMapType As Long) As Long
Public Declare Function GetKeyboardState Lib "user32" (pbKeyState As Byte) As Long
Public Declare Sub keybd_event Lib "user32" (ByVal bVk As Byte, ByVal bScan As Byte, ByVal dwFlags As Long, ByVal dwExtraInfo As Long)

Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Public Const KBC_KEY_CMD = &H64    '键盘命令端口
Public Const KBC_KEY_DATA = &H60   '键盘数据端口
Public Const KEYEVENTF_EXTENDEDKEY = &H1
Public Const KEYEVENTF_KEYUP = &H2

'虚拟键
Public Const VK_NUMLOCK = &H90
Public Const VK_CAPITAL = &H14
Public Const VK_SCROLL = &H91
Public Const VK_SHIFT = &H10

Sub KBCWait4IBE()
    Dim dwVal As Long
    dwVal = 0
    Do
        GetPortVal KBC_KEY_CMD, dwVal, 1
    Loop While (dwVal And &H2)
End Sub

Sub KeyPressDown(ByVal vKeyCode As Long)
    Dim btScancode As Long
    btScancode = MapVirtualKey(vKeyCode, 0)
  
    KBCWait4IBE
    SetPortVal KBC_KEY_CMD, &HD2, 1
    KBCWait4IBE
    SetPortVal KBC_KEY_DATA, btScancode, 1
    
End Sub

Sub KeyPressUp(ByVal vKeyCode As Long)
    Dim btScancode As Long
    btScancode = MapVirtualKey(vKeyCode, 0)
      
    KBCWait4IBE
    SetPortVal KBC_KEY_CMD, &HD2, 1
    KBCWait4IBE
    SetPortVal KBC_KEY_DATA, btScancode Or &H80, 1
End Sub

Sub KeyPressExDown(ByVal vKeyCode As Long)
    Dim btScancode As Long
    btScancode = MapVirtualKey(vKeyCode, 0)
  
    KBCWait4IBE
    SetPortVal KBC_KEY_CMD, &HD2, 1
    KBCWait4IBE
    SetPortVal KBC_KEY_DATA, &HE0, 1
    Sleep 25
    KBCWait4IBE
    SetPortVal KBC_KEY_CMD, &HD2, 1
    KBCWait4IBE
    SetPortVal KBC_KEY_DATA, btScancode, 1
    
End Sub

Sub KeyPressExUp(ByVal vKeyCode As Long)
    Dim btScancode As Long
    btScancode = MapVirtualKey(vKeyCode, 0)

    KBCWait4IBE
    SetPortVal KBC_KEY_CMD, &HD2, 1
    KBCWait4IBE
    SetPortVal KBC_KEY_DATA, &HE0, 1
    Sleep 25
    KBCWait4IBE
    SetPortVal KBC_KEY_CMD, &HD2, 1
    KBCWait4IBE
    SetPortVal KBC_KEY_DATA, btScancode Or &H80, 1
End Sub

'键按下
Sub KeyDown(strCode As String)
    If bDebug Then Exit Sub
    Dim I, strTemp As String, KeyCode As Long
    For I = 1 To Len(strCode) Step 3
        strTemp = Mid(strCode, I, 3)
        KeyCode = Val("&H" & Right(strTemp, 2))
        If Left(strTemp, 1) = "1" Then
            KeyPressDown KeyCode
        Else
            KeyPressExDown KeyCode
        End If
    Next
End Sub

'键抬起
Sub KeyUp(strCode As String)
    If bDebug Then Exit Sub
    Dim I, strTemp, KeyCode As Long
    For I = 1 To Len(strCode) Step 3
        strTemp = Mid(strCode, I, 3)
        KeyCode = Val("&H" & Right(strTemp, 2))
        If Left(strTemp, 1) = "1" Then
            KeyPressUp KeyCode
        Else
            KeyPressExUp KeyCode
        End If
    Next
End Sub

'添加到按键序列
Public Sub addKeySeq(strKey As String, strType As Integer)
    If Not objKeySeq.Exists(strKey) Then
        objKeySeq.Add strKey, strType & "|" & strKey
        If strType = 1 And bCtrlKey(strKey) Then KeyDown strKey '扩展键按住的情况下提前按，以保证只按下一次
    End If
End Sub

'删除一个按键序列
Public Sub removeKeySeq(strKey)
    If objKeySeq.Exists(strKey) Then
        Dim strTemp
        strTemp = objKeySeq(strKey)
        If Left(strTemp, 1) = "1" Then
            If Mid(strTemp, 3, 1) = "1" Then Sleep CharKeyDelay Else Sleep CtrlKeyDelay
            KeyUp Mid(strTemp, 3)
        End If
        objKeySeq.Remove strKey
    End If
End Sub

'删除全部按键序列
Public Sub removeAllKeySeq()
    Dim strKey, strCode As String
    For Each strKey In objKeySeq
        strCode = objKeySeq(strKey)
        If Left(strCode, 1) = "1" Then KeyUp Mid(strCode, 3) '连按情况下才需要按起
    Next
    objKeySeq.RemoveAll
End Sub

'返回键盘状态
Public Function getKeyState(nKeyCode As Integer) As Boolean
    Dim KeyboardBuffer(256) As Byte
    GetKeyboardState KeyboardBuffer(0)
    If KeyboardBuffer(nKeyCode) = 1 Then getKeyState = True Else getKeyState = False
End Function

'设置键盘状态
Public Function setKeyState(nKeyCode As Integer, bState As Boolean)
    Dim KeyboardBuffer(256) As Byte
    GetKeyboardState KeyboardBuffer(0)
    If (KeyboardBuffer(nKeyCode) = 1) <> bState Then
        keybd_event nKeyCode, &H45, KEYEVENTF_EXTENDEDKEY Or 0, 0
        keybd_event nKeyCode, &H45, KEYEVENTF_EXTENDEDKEY Or KEYEVENTF_KEYUP, 0
    End If
End Function

'判断是否为３个控制键
Public Function bCtrlKey(strKeyCode As String)
    bCtrlKey = (strKeyCode = "1A0" Or strKeyCode = "1A1" Or strKeyCode = "211" Or strKeyCode = "212")
End Function
