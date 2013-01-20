VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3240
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5820
   LinkTopic       =   "Form1"
   ScaleHeight     =   3240
   ScaleWidth      =   5820
   StartUpPosition =   3  '窗口缺省
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

'注册一个全局钩子。WH_KEYBOARD_LL这个常数表示键盘全局钩子。AddressOf MyKBHook求出钩子函数MyKBHook的内存地址

'App.hInstance是本程序的模块句柄，也就是钩子函数所在的模块，最后一个参数0表示全局钩子
hHook = SetWindowsHookEx(WH_KEYBOARD_LL, AddressOf MyKBHook, App.hInstance, 0)
If hHook = 0 Then End      '如果钩子注册失败会返回0，否则返回注册的钩子句柄
'Me.Hide
End Sub

Private Sub Form_Unload(Cancel As Integer)

'关闭程序的时候用这个函数卸载钩子
Call UnhookWindowsHookEx(hHook)

End Sub
