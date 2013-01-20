VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmAlphaSetup 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "透明度调整"
   ClientHeight    =   1215
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4980
   Icon            =   "frmAlphaSetup.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1215
   ScaleWidth      =   4980
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消(&C)"
      Height          =   315
      Left            =   2880
      TabIndex        =   5
      Top             =   720
      Width           =   915
   End
   Begin VB.CommandButton cmdOk 
      Caption         =   "确定(&O)"
      Height          =   315
      Left            =   1620
      TabIndex        =   4
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox txtAlpha 
      Height          =   315
      Left            =   3840
      TabIndex        =   2
      Top             =   240
      Width           =   495
   End
   Begin MSComctlLib.Slider SliderAlpha 
      Height          =   315
      Left            =   1020
      TabIndex        =   1
      Top             =   240
      Width           =   2835
      _ExtentX        =   5001
      _ExtentY        =   556
      _Version        =   393216
      LargeChange     =   10
      SmallChange     =   5
      Max             =   80
      TickStyle       =   3
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "%"
      Height          =   180
      Left            =   4380
      TabIndex        =   3
      Top             =   300
      Width           =   90
   End
   Begin VB.Label label1 
      AutoSize        =   -1  'True
      Caption         =   "透明度："
      Height          =   180
      Left            =   300
      TabIndex        =   0
      Top             =   300
      Width           =   720
   End
End
Attribute VB_Name = "frmAlphaSetup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private frmHwnd As Long
Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdOk_Click()
    alphaLevel = 255 * (100 - SliderAlpha.Value) / 100
    SetAlpha frmHwnd, alphaLevel
    clsIni.WriteIniKey "Setup", "alphaLevel", CStr(alphaLevel)
    Unload Me
End Sub

Private Sub Form_Load()
    CenterMe Me
    txtAlpha.Text = CInt((1 - alphaLevel / 255) * 100)
    SliderAlpha.Value = txtAlpha.Text
    Select Case lastMode
        Case 1
            frmHwnd = frmFull.hwnd
        Case 2
            frmHwnd = frmMini.hwnd
        Case 3
            frmHwnd = frmGame.hwnd
    End Select
End Sub

Private Sub Form_Unload(Cancel As Integer)
    SetAlpha frmHwnd, alphaLevel
End Sub

Private Sub SliderAlpha_Scroll()
    txtAlpha.Text = SliderAlpha.Value
    Dim intAlpha As Integer
    intAlpha = 255 * (100 - SliderAlpha.Value) / 100
    SetAlpha frmHwnd, intAlpha
End Sub

Private Sub txtAlpha_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If IsNumeric(txtAlpha.Text) Then
            If Val(txtAlpha.Text) >= 0 And Val(txtAlpha.Text) <= 80 Then
                SliderAlpha.Value = Val(txtAlpha.Text)
                Dim intAlpha As Integer
                intAlpha = 255 * (100 - Val(txtAlpha.Text)) / 100
                SetAlpha frmHwnd, intAlpha
            End If
        End If
    End If
End Sub
