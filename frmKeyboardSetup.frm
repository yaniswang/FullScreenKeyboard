VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form frmKeyboardSetup 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "键盘设置"
   ClientHeight    =   2880
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4485
   Icon            =   "frmKeyboardSetup.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2880
   ScaleWidth      =   4485
   StartUpPosition =   3  '窗口缺省
   Begin VB.CheckBox chkDefault 
      Caption         =   "恢复默认"
      Height          =   315
      Left            =   180
      TabIndex        =   10
      Top             =   2340
      Width           =   1035
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消(&C)"
      Height          =   360
      Left            =   3000
      TabIndex        =   7
      Top             =   2280
      Width           =   1095
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "保存(&S)"
      Height          =   345
      Left            =   1800
      TabIndex        =   6
      Top             =   2280
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "键盘按键延迟"
      Height          =   1935
      Left            =   180
      TabIndex        =   0
      Top             =   240
      Width           =   4095
      Begin MSComCtl2.UpDown UpDownCtrlDelay 
         Height          =   270
         Left            =   2521
         TabIndex        =   12
         Top             =   735
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   476
         _Version        =   393216
         BuddyControl    =   "txtCtrlDelay"
         BuddyDispid     =   196613
         OrigLeft        =   3240
         OrigTop         =   780
         OrigRight       =   3495
         OrigBottom      =   1035
         Max             =   500
         SyncBuddy       =   -1  'True
         BuddyProperty   =   65547
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDownCharDelay 
         Height          =   270
         Left            =   2520
         TabIndex        =   11
         Top             =   360
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   476
         _Version        =   393216
         BuddyControl    =   "txtCharDelay"
         BuddyDispid     =   196614
         OrigLeft        =   3180
         OrigTop         =   360
         OrigRight       =   3435
         OrigBottom      =   675
         Max             =   500
         SyncBuddy       =   -1  'True
         BuddyProperty   =   65547
         Enabled         =   -1  'True
      End
      Begin VB.TextBox txtCtrlDelay 
         Height          =   270
         Left            =   1380
         TabIndex        =   4
         Top             =   735
         Width           =   1140
      End
      Begin VB.TextBox txtCharDelay 
         Height          =   270
         Left            =   1380
         TabIndex        =   2
         Top             =   375
         Width           =   1140
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "毫秒"
         Height          =   180
         Left            =   2820
         TabIndex        =   9
         Top             =   780
         Width           =   360
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "毫秒"
         Height          =   180
         Left            =   2820
         TabIndex        =   8
         Top             =   420
         Width           =   360
      End
      Begin VB.Label Label3 
         Caption         =   "说明：一般情况下扩展按键不需要延迟，在一些格斗游戏中，必需要设置为40，某些特殊游戏可能需要特殊调整。"
         ForeColor       =   &H000000FF&
         Height          =   525
         Left            =   360
         TabIndex        =   5
         Top             =   1140
         Width           =   3480
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "扩展按键："
         Height          =   180
         Left            =   360
         TabIndex        =   3
         Top             =   780
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "普通按键："
         Height          =   180
         Left            =   360
         TabIndex        =   1
         Top             =   420
         Width           =   900
      End
   End
End
Attribute VB_Name = "frmKeyboardSetup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chkDefault_Click()
    txtCharDelay.Text = 40
    txtCtrlDelay.Text = 0
    chkDefault.Value = 0
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdSave_Click()
    If txtCharDelay.Text = "" Then txtCharDelay.SetFocus: MsgBox "请输入普通按键延迟时间！", vbInformation + vbOKOnly
    If Not IsNumeric(txtCharDelay.Text) Then txtCharDelay.SetFocus: MsgBox "您输入的普通按键延迟时间有误，请重新输入！", vbInformation + vbOKOnly
    If txtCtrlDelay.Text = "" Then txtCtrlDelay.SetFocus: MsgBox "请填写扩展按键延迟时间！", vbInformation + vbOKOnly
    If Not IsNumeric(txtCtrlDelay.Text) Then txtCtrlDelay.SetFocus: MsgBox "您输入的普通按键延迟时间有误，请重新输入！", vbInformation + vbOKOnly
    CharKeyDelay = CInt(txtCharDelay.Text)
    CtrlKeyDelay = CInt(txtCtrlDelay.Text)
    clsIni.WriteIniKey "Keyboard", "CharKeyDelay", CStr(CharKeyDelay)
    clsIni.WriteIniKey "Keyboard", "CtrlKeyDelay", CStr(CtrlKeyDelay)
    MsgBox "您的键盘设置成功保存！", vbInformation + vbOKOnly
    Unload Me
End Sub

Private Sub Form_Load()
    CenterMe Me
    SetTopMost Me.hwnd, True
    
    '初始化
    txtCharDelay.Text = CharKeyDelay
    txtCtrlDelay.Text = CtrlKeyDelay
End Sub
