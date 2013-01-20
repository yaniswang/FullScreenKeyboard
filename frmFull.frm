VERSION 5.00
Object = "{653A556A-745E-476A-BB7C-20AB9DC0A4FB}#5.0#0"; "EXButton.ocx"
Begin VB.Form frmFull 
   BackColor       =   &H00A85E33&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "完全屏幕键盘 v1.1 By Ayi(2007-12-8)"
   ClientHeight    =   2835
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   10515
   Icon            =   "frmFull.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2835
   ScaleWidth      =   10515
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer TimerPreKeySeq 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   2580
      Top             =   120
   End
   Begin VB.Timer TimerKeySeq 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   4620
      Top             =   120
   End
   Begin VB.Timer TimerGetFocus 
      Interval        =   50
      Left            =   8640
      Top             =   120
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   89
      Left            =   8040
      TabIndex        =   88
      Tag             =   "227228"
      ToolTipText     =   "右下"
      Top             =   2340
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":08CA
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   87
      Left            =   6840
      TabIndex        =   86
      Tag             =   "225228"
      ToolTipText     =   "左下"
      Top             =   2340
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":0A2C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   84
      Left            =   8040
      TabIndex        =   83
      Tag             =   "226227"
      ToolTipText     =   "右上"
      Top             =   1500
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":0B8E
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   82
      Left            =   6840
      TabIndex        =   81
      Tag             =   "225226"
      ToolTipText     =   "左上"
      Top             =   1500
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":0CF0
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   54
      Left            =   5640
      TabIndex        =   53
      Tag             =   "10D"
      ToolTipText     =   "回车"
      Top             =   1500
      Width           =   1035
      _ExtentX        =   1826
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":0E52
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Enter"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   81
      Left            =   8040
      TabIndex        =   80
      Tag             =   "222"
      ToolTipText     =   "下翻"
      Top             =   1080
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":0FB4
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "PgDn"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   80
      Left            =   7440
      TabIndex        =   79
      Tag             =   "223"
      ToolTipText     =   "末尾"
      Top             =   1080
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":1116
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "End"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   79
      Left            =   6840
      TabIndex        =   78
      Tag             =   "22E"
      ToolTipText     =   "删除"
      Top             =   1080
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":1278
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Del"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   78
      Left            =   8040
      TabIndex        =   77
      Tag             =   "221"
      ToolTipText     =   "上翻"
      Top             =   660
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":13DA
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "PgUp"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   77
      Left            =   7440
      TabIndex        =   76
      Tag             =   "224"
      ToolTipText     =   "起始"
      Top             =   660
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":153C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Home"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   76
      Left            =   6840
      TabIndex        =   75
      Tag             =   "22D"
      ToolTipText     =   "插入"
      Top             =   660
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":169E
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Ins"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   75
      Left            =   7440
      TabIndex        =   74
      Tag             =   "291"
      ToolTipText     =   "暂停"
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":1800
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "Scroll"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   74
      Left            =   6840
      TabIndex        =   73
      Tag             =   "12C"
      ToolTipText     =   "截图"
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":1962
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "Screen"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   13
      Left            =   6300
      TabIndex        =   12
      Tag             =   "17B"
      Top             =   120
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":1AC4
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "F12"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   12
      Left            =   5880
      TabIndex        =   11
      Tag             =   "17A"
      Top             =   120
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":1C26
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "F11"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   11
      Left            =   5460
      TabIndex        =   10
      Tag             =   "179"
      Top             =   120
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":1D88
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "F10"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   10
      Left            =   5040
      TabIndex        =   9
      Tag             =   "178"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":1EEA
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F9"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   9
      Left            =   4260
      TabIndex        =   8
      Tag             =   "177"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":204C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F8"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   8
      Left            =   3840
      TabIndex        =   7
      Tag             =   "176"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":21AE
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F7"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   7
      Left            =   3420
      TabIndex        =   6
      Tag             =   "175"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":2310
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F6"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   6
      Left            =   3000
      TabIndex        =   5
      Tag             =   "174"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":2472
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F5"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   5
      Left            =   2220
      TabIndex        =   4
      Tag             =   "173"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":25D4
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F4"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   4
      Left            =   1800
      TabIndex        =   3
      Tag             =   "172"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":2736
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F3"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   3
      Left            =   1380
      TabIndex        =   2
      Tag             =   "171"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":2898
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F2"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   1
      Left            =   120
      TabIndex        =   0
      Tag             =   "11B"
      ToolTipText     =   "取消"
      Top             =   120
      Width           =   495
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":29FA
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Esc"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   2
      Left            =   960
      TabIndex        =   1
      Tag             =   "170"
      Top             =   120
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":2B5C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   28
      Left            =   120
      TabIndex        =   27
      Tag             =   "109"
      ToolTipText     =   "制表符"
      Top             =   1080
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":2CBE
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Tab"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   27
      Left            =   5580
      TabIndex        =   26
      Tag             =   "108"
      ToolTipText     =   "删除"
      Top             =   660
      Width           =   1095
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":2E20
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Back"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   42
      Left            =   120
      TabIndex        =   41
      Tag             =   "214"
      ToolTipText     =   "大小写"
      Top             =   1500
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":2F82
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Caps"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   71
      Left            =   4860
      TabIndex        =   70
      Tag             =   "212"
      ToolTipText     =   "功能"
      Top             =   2340
      Width           =   675
      _ExtentX        =   1191
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":30E4
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Alt"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   69
      Left            =   1260
      TabIndex        =   68
      Tag             =   "212"
      ToolTipText     =   "功能"
      Top             =   2340
      Width           =   675
      _ExtentX        =   1191
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":3246
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Alt"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   73
      Left            =   6000
      TabIndex        =   72
      Tag             =   "211"
      ToolTipText     =   "控制"
      Top             =   2340
      Width           =   675
      _ExtentX        =   1191
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":33A8
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Ctrl"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   67
      Left            =   120
      TabIndex        =   66
      Tag             =   "211"
      ToolTipText     =   "控制"
      Top             =   2340
      Width           =   675
      _ExtentX        =   1191
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":350A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Ctrl"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   70
      Left            =   1980
      TabIndex        =   69
      Tag             =   "120"
      ToolTipText     =   "空格"
      Top             =   2340
      Width           =   2835
      _ExtentX        =   5001
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":366C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   26
      Left            =   5160
      TabIndex        =   25
      Tag             =   "1BB"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":37CE
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "="
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   25
      Left            =   4740
      TabIndex        =   24
      Tag             =   "1BD"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":3930
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "-"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   24
      Left            =   4320
      TabIndex        =   23
      Tag             =   "130"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":3A92
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "0"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   23
      Left            =   3900
      TabIndex        =   22
      Tag             =   "139"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":3BF4
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "9"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   22
      Left            =   3480
      TabIndex        =   21
      Tag             =   "138"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":3D56
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "8"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   21
      Left            =   3060
      TabIndex        =   20
      Tag             =   "137"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":3EB8
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "7"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   20
      Left            =   2640
      TabIndex        =   19
      Tag             =   "136"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":401A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "6"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   19
      Left            =   2220
      TabIndex        =   18
      Tag             =   "135"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":417C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "5"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   18
      Left            =   1800
      TabIndex        =   17
      Tag             =   "134"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":42DE
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "4"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   17
      Left            =   1380
      TabIndex        =   16
      Tag             =   "133"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":4440
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "3"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   16
      Left            =   960
      TabIndex        =   15
      Tag             =   "132"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":45A2
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "2"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   15
      Left            =   540
      TabIndex        =   14
      Tag             =   "131"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":4704
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   14
      Left            =   120
      TabIndex        =   13
      Tag             =   "1C0"
      Top             =   660
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":4866
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "`"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   41
      Left            =   5940
      TabIndex        =   40
      Tag             =   "1DC"
      Top             =   1080
      Width           =   735
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":49C8
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "\"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   40
      Left            =   5520
      TabIndex        =   39
      Tag             =   "1DD"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":4B2A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "]"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   39
      Left            =   5100
      TabIndex        =   38
      Tag             =   "1DB"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":4C8C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "["
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   38
      Left            =   4680
      TabIndex        =   37
      Tag             =   "150"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":4DEE
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "p"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   37
      Left            =   4260
      TabIndex        =   36
      Tag             =   "14F"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":4F50
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "o"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   36
      Left            =   3840
      TabIndex        =   35
      Tag             =   "149"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":50B2
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "i"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   35
      Left            =   3420
      TabIndex        =   34
      Tag             =   "155"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":5214
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "u"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   34
      Left            =   3000
      TabIndex        =   33
      TabStop         =   0   'False
      Tag             =   "159"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":5376
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "y"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   33
      Left            =   2580
      TabIndex        =   32
      Tag             =   "154"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":54D8
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "t"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   32
      Left            =   2160
      TabIndex        =   31
      Tag             =   "152"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":563A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "r"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   31
      Left            =   1740
      TabIndex        =   30
      Tag             =   "145"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":579C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "e"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   30
      Left            =   1320
      TabIndex        =   29
      Tag             =   "157"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":58FE
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "w"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   29
      Left            =   900
      TabIndex        =   28
      Tag             =   "151"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":5A60
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "q"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   53
      Left            =   5220
      TabIndex        =   52
      Tag             =   "1DE"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":5BC2
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "'"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   52
      Left            =   4800
      TabIndex        =   51
      Tag             =   "1BA"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":5D24
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   ";"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   51
      Left            =   4380
      TabIndex        =   50
      Tag             =   "14C"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":5E86
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "l"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   50
      Left            =   3960
      TabIndex        =   49
      Tag             =   "14B"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":5FE8
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "k"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   49
      Left            =   3540
      TabIndex        =   48
      Tag             =   "14A"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":614A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "j"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   48
      Left            =   3120
      TabIndex        =   47
      Tag             =   "148"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":62AC
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "h"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   47
      Left            =   2700
      TabIndex        =   46
      Tag             =   "147"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":640E
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "g"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   46
      Left            =   2280
      TabIndex        =   45
      Tag             =   "146"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":6570
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "f"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   45
      Left            =   1860
      TabIndex        =   44
      Tag             =   "144"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":66D2
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "d"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   44
      Left            =   1440
      TabIndex        =   43
      Tag             =   "153"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":6834
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "s"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   43
      Left            =   1020
      TabIndex        =   42
      Tag             =   "141"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":6996
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "a"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   65
      Left            =   5040
      TabIndex        =   64
      Tag             =   "1BF"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":6AF8
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "/"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   64
      Left            =   4620
      TabIndex        =   63
      Tag             =   "1BE"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":6C5A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   63
      Left            =   4200
      TabIndex        =   62
      Tag             =   "1BC"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":6DBC
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   ","
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   62
      Left            =   3780
      TabIndex        =   61
      Tag             =   "14D"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":6F1E
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "m"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   61
      Left            =   3360
      TabIndex        =   60
      Tag             =   "14E"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":7080
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "n"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   60
      Left            =   2940
      TabIndex        =   59
      Tag             =   "142"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":71E2
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "b"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   59
      Left            =   2520
      TabIndex        =   58
      Tag             =   "156"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":7344
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "v"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   58
      Left            =   2100
      TabIndex        =   57
      Tag             =   "143"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":74A6
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "c"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   57
      Left            =   1680
      TabIndex        =   56
      Tag             =   "158"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":7608
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "x"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   88
      Left            =   7440
      TabIndex        =   87
      Tag             =   "228"
      ToolTipText     =   "下"
      Top             =   2340
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":776A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "↓"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   86
      Left            =   8040
      TabIndex        =   85
      Tag             =   "227"
      ToolTipText     =   "右"
      Top             =   1920
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":78CC
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "→"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   83
      Left            =   7440
      TabIndex        =   82
      Tag             =   "226"
      ToolTipText     =   "上"
      Top             =   1500
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":7A2E
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "↑"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   85
      Left            =   6840
      TabIndex        =   84
      Tag             =   "225"
      ToolTipText     =   "左"
      Top             =   1920
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":7B90
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "←"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   56
      Left            =   1260
      TabIndex        =   55
      Tag             =   "15A"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":7CF2
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "z"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   68
      Left            =   840
      TabIndex        =   67
      Tag             =   "25B"
      ToolTipText     =   "Win键"
      Top             =   2340
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":7E54
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "Win"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   72
      Left            =   5580
      TabIndex        =   71
      Tag             =   "25C"
      ToolTipText     =   "Win键"
      Top             =   2340
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":7FB6
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "Win"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   90
      Left            =   8760
      TabIndex        =   89
      Tag             =   "290"
      ToolTipText     =   "数字锁"
      Top             =   660
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":8118
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "Num"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   94
      Left            =   8760
      TabIndex        =   93
      Tag             =   "167"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":827A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "7"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   97
      Left            =   8760
      TabIndex        =   96
      Tag             =   "164"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":83DC
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "4"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   101
      Left            =   8760
      TabIndex        =   100
      Tag             =   "161"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":853E
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   95
      Left            =   9180
      TabIndex        =   94
      Tag             =   "168"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":86A0
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "8"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   96
      Left            =   9600
      TabIndex        =   95
      Tag             =   "169"
      Top             =   1080
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":8802
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "9"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   98
      Left            =   9180
      TabIndex        =   97
      Tag             =   "165"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":8964
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "5"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   99
      Left            =   9600
      TabIndex        =   98
      Tag             =   "166"
      Top             =   1500
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":8AC6
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "6"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   102
      Left            =   9180
      TabIndex        =   101
      Tag             =   "162"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":8C28
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "2"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   103
      Left            =   9600
      TabIndex        =   102
      Tag             =   "163"
      Top             =   1920
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":8D8A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "3"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   104
      Left            =   8760
      TabIndex        =   103
      Tag             =   "160"
      Top             =   2340
      Width           =   795
      _ExtentX        =   1402
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":8EEC
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "0"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   105
      Left            =   9600
      TabIndex        =   104
      Tag             =   "16E"
      Top             =   2340
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":904E
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   91
      Left            =   9180
      TabIndex        =   90
      Tag             =   "16F"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":91B0
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "/"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   92
      Left            =   9600
      TabIndex        =   91
      Tag             =   "16A"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":9312
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "*"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   93
      Left            =   10020
      TabIndex        =   92
      Tag             =   "16D"
      Top             =   660
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":9474
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "-"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   795
      Index           =   100
      Left            =   10020
      TabIndex        =   99
      Tag             =   "16B"
      Top             =   1080
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   1402
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":95D6
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "+"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   795
      Index           =   106
      Left            =   10020
      TabIndex        =   106
      Tag             =   "10D"
      ToolTipText     =   "回车"
      Top             =   1920
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   1402
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":9738
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "="
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   55
      Left            =   120
      TabIndex        =   54
      Tag             =   "1A0"
      ToolTipText     =   "换档"
      Top             =   1920
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":989A
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "↑Shift"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   66
      Left            =   5460
      TabIndex        =   65
      Tag             =   "1A1"
      ToolTipText     =   "换档"
      Top             =   1920
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":99FC
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "↑Shift"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   107
      Left            =   8040
      TabIndex        =   110
      Tag             =   "213"
      ToolTipText     =   "暂停"
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmFull.frx":9B5E
      ShowFoucs       =   0   'False
      DisSetLeft      =   0
      Style           =   1
      Caption         =   "Break"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00A85E33&
      Caption         =   "滚动"
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   10020
      TabIndex        =   112
      Top             =   300
      Width           =   360
   End
   Begin VB.Label lblScrollLight 
      AutoSize        =   -1  'True
      BackColor       =   &H00A85E33&
      Caption         =   "●"
      ForeColor       =   &H0000FF00&
      Height          =   180
      Left            =   10080
      TabIndex        =   111
      Top             =   120
      Width           =   180
   End
   Begin VB.Label lblNumLight 
      AutoSize        =   -1  'True
      BackColor       =   &H00A85E33&
      Caption         =   "●"
      ForeColor       =   &H0000FF00&
      Height          =   180
      Left            =   9240
      TabIndex        =   109
      Top             =   120
      Width           =   180
   End
   Begin VB.Label lblCapLight 
      AutoSize        =   -1  'True
      BackColor       =   &H00A85E33&
      Caption         =   "●"
      ForeColor       =   &H0000FF00&
      Height          =   180
      Left            =   9660
      TabIndex        =   108
      Top             =   120
      Width           =   180
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H00A85E33&
      Caption         =   "数字"
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   9180
      TabIndex        =   107
      Top             =   300
      Width           =   360
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackColor       =   &H00A85E33&
      Caption         =   "大写"
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   9600
      TabIndex        =   105
      Top             =   300
      Width           =   360
   End
   Begin VB.Menu mnu_Mode 
      Caption         =   "切换键盘(&K)"
      Begin VB.Menu mnu_Full 
         Caption         =   "完整键盘(&F)"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnu_Mini 
         Caption         =   "迷你键盘(&M)"
      End
      Begin VB.Menu mnu_Game 
         Caption         =   "游戏键盘(&G)"
      End
      Begin VB.Menu b2 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_Exit 
         Caption         =   "退出屏幕键盘(&X)"
      End
   End
   Begin VB.Menu mnu_Setup 
      Caption         =   "设置(&S)"
      Begin VB.Menu mnu_KeyboardSetup 
         Caption         =   "键盘设置(&K)"
      End
      Begin VB.Menu mnu_MouseSetup 
         Caption         =   "鼠标设置(&M)"
      End
      Begin VB.Menu b1 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_TopMost 
         Caption         =   "前端显示(&T)"
      End
      Begin VB.Menu mnu_Sound 
         Caption         =   "使用单击声响(&S)"
      End
      Begin VB.Menu mnu_Style 
         Caption         =   "切换按钮样式(&B)"
      End
      Begin VB.Menu mnu_alpha 
         Caption         =   "透明度(&A)"
         Begin VB.Menu mnu_alpha_80 
            Caption         =   "80%"
         End
         Begin VB.Menu mnu_alpha_50 
            Caption         =   "50%"
         End
         Begin VB.Menu mnu_alpha_20 
            Caption         =   "20%"
         End
         Begin VB.Menu mnu_alpha_0 
            Caption         =   "0%"
         End
         Begin VB.Menu mnu_alpha_Setup 
            Caption         =   "自定义"
         End
      End
   End
   Begin VB.Menu mnu_Help 
      Caption         =   "帮助(&H)"
      Begin VB.Menu mnu_HelpFile 
         Caption         =   "帮助(&H)"
      End
      Begin VB.Menu mnu_About 
         Caption         =   "关于(&A)"
      End
   End
End
Attribute VB_Name = "frmFull"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private preKeyCode As String, preAction As Integer
Private bCtrlHold As Boolean



Private Sub cmdKey_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeySpace Then KeyCode = 0
End Sub

Private Sub cmdKey_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    '鼠标按下
    If cmdKey(Index).Caption = "Num" Or cmdKey(Index).Caption = "Scroll" Or cmdKey(Index).Caption = "Caps" Then Exit Sub
    Dim Action As Integer, strKeyCode As String, Delay
    Action = MouseAction(Button)
    strKeyCode = cmdKey(Index).Tag
    If Action = 1 And bCtrlKey(strKeyCode) Then Exit Sub '3个控制键默认为按住保持
    If Left(strKeyCode, 1) = "1" Then Delay = CharKeyDelay Else Delay = CtrlKeyDelay
    If Action <> 0 Then
        Select Case Action
            Case 1, 2 '按住,连按
                removeKeySeq strKeyCode '进入非保持之前先清除之前的保持状态
                cmdKey(Index).Style = ButtonStyle
                cmdKey(Index).ForeColor = RGB(0, 0, 0)
                
                KeyDown strKeyCode
                If Action = 2 Then
                    Sleep Delay '连击必需要延迟
                    KeyUp strKeyCode
                End If
                
                '起跑时间200毫秒
                preKeyCode = strKeyCode
                preAction = Action
                TimerPreKeySeq.Interval = 300
                TimerPreKeySeq.Enabled = True
        End Select
    End If
End Sub

Private Sub cmdKey_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    '鼠标抬起
    If bPlaySound Then sndPlaySound App.Path & "\ClickDn.wav", SND_ASYNC
    If cmdKey(Index).Caption = "Num" Or cmdKey(Index).Caption = "Scroll" Or cmdKey(Index).Caption = "Caps" Then '指示灯,只需要单击功能
        Select Case cmdKey(Index).Caption
            Case "Num"
                If getKeyState(VK_NUMLOCK) Then
                    lblNumLight.ForeColor = RGB(221, 221, 221)
                    setKeyState VK_NUMLOCK, False
                Else
                    lblNumLight.ForeColor = RGB(142, 244, 0)
                    setKeyState VK_NUMLOCK, True
                End If
            Case "Scroll"
                If getKeyState(VK_SCROLL) Then
                    lblScrollLight.ForeColor = RGB(221, 221, 221)
                    setKeyState VK_SCROLL, False
                Else
                    lblScrollLight.ForeColor = RGB(142, 244, 0)
                    setKeyState VK_SCROLL, True
                End If
            Case "Caps"
                If getKeyState(VK_CAPITAL) Then
                    lblCapLight.ForeColor = RGB(221, 221, 221)
                    ShowCap False
                    setKeyState VK_CAPITAL, False
                Else
                    lblCapLight.ForeColor = RGB(142, 244, 0)
                    ShowCap True
                    setKeyState VK_CAPITAL, True
                End If
        End Select
        Exit Sub
    End If
    
    Dim Action As Integer, strKeyCode As String, Delay
    Action = MouseAction(Button)
    strKeyCode = cmdKey(Index).Tag
    If Action = 1 And bCtrlKey(strKeyCode) Then '3个控制键默认为按住保持
        bCtrlHold = True
        Action = 3
    End If
    If Left(strKeyCode, 1) = "1" Then Delay = CharKeyDelay Else Delay = CtrlKeyDelay
    If Action <> 0 Then
        Select Case Action
            Case 1, 2 '取消按住,连按
                TimerPreKeySeq.Enabled = False
                TimerPreKeySeq.Interval = 0
                If Action = 1 Then
                    Sleep Delay
                    KeyUp strKeyCode
                End If
                removeKeySeq strKeyCode
            Case 3, 4 '保持按住，保持连按
                If cmdKey(Index).Style <> 0 Then '开始保持
                    addKeySeq strKeyCode, Action - 2
                    cmdKey(Index).Style = 0
                    If Action = 3 Then cmdKey(Index).ForeColor = RGB(0, 0, 255) Else cmdKey(Index).ForeColor = RGB(255, 0, 0)
                Else '结束保持
                    removeKeySeq strKeyCode
                    cmdKey(Index).Style = ButtonStyle
                    cmdKey(Index).ForeColor = RGB(0, 0, 0)
                End If
        End Select
        If cmdKey(Index).Caption = "↑Shift" Then '换档更换键盘字符
            If cmdKey(Index).Style = 0 Then
                ShowCharShift True
                If getKeyState(VK_CAPITAL) Then ShowCap False Else ShowCap True
            Else
                ShowCharShift False
                If getKeyState(VK_CAPITAL) Then ShowCap True Else ShowCap False
            End If
        End If
        If Not bCtrlKey(strKeyCode) And bCtrlHold Then UnHoldAllCtrl '控制键按下后，非控制键被按下，弹起控制键
    End If
End Sub

Private Sub Form_Initialize()
    '防火程序重复运行
    If App.PrevInstance Then End

    '初始化全局变量
    bDebug = False
    Set clsIni = New classIniFile
    clsIni.INIFileName = App.Path & "\config.ini"
    Set objKeySeq = New Scripting.Dictionary
    
    '读取注册表
    lastMode = clsIni.GetIniKey("Setup", "lastMode")
    bPlaySound = clsIni.GetIniKey("Setup", "bPlaySound")
    ButtonStyle = clsIni.GetIniKey("Setup", "ButtonStyle")
    bTopMost = clsIni.GetIniKey("Setup", "bTopMost")
    alphaLevel = clsIni.GetIniKey("Setup", "alphaLevel")
    MouseAction(1) = clsIni.GetIniKey("Mouse", "LeftButtonMode")
    MouseAction(4) = clsIni.GetIniKey("Mouse", "MiddleButtonMode")
    MouseAction(2) = clsIni.GetIniKey("Mouse", "RightButtonMode")
    CharKeyDelay = clsIni.GetIniKey("Keyboard", "CharKeyDelay")
    CtrlKeyDelay = clsIni.GetIniKey("Keyboard", "CtrlKeyDelay")
    
    '加载对应键盘模式
    Select Case lastMode
        Case 2
            frmMini.keyInit
            frmMini.Show
            Me.Hide
        Case 3
            frmGame.keyInit
            frmGame.Show
            Me.Hide
    End Select
End Sub

Private Sub Form_Load()

    '加载键盘驱动
    If Not bDebug Then
        If InitializeWinIo = False Then
           MsgBox "驱动程序加载失败!"
           End
        End If
    End If
    
    '初始化窗口
    SetTopMost Me.hwnd, True
    Me.Left = Screen.Width / 2 - Me.Width / 2
    Me.Top = Screen.Height - Me.Height - 1500
        
    '进行键盘初始化
    keyInit

    '初始化变量
    bCtrlHold = False
    
End Sub

Public Sub keyInit() '键盘初始化
    '设置透明度
    SetAlpha Me.hwnd, alphaLevel
    
    '初始化指示灯
    If lastMode <> 1 Then Exit Sub
    If getKeyState(VK_NUMLOCK) Then lblNumLight.ForeColor = RGB(142, 244, 0) Else lblNumLight.ForeColor = RGB(221, 221, 221)
    If getKeyState(VK_SCROLL) Then lblScrollLight.ForeColor = RGB(142, 244, 0) Else lblScrollLight.ForeColor = RGB(221, 221, 221)
    If getKeyState(VK_CAPITAL) Then
        lblCapLight.ForeColor = RGB(142, 244, 0)
        ShowCap True
    Else
        lblCapLight.ForeColor = RGB(221, 221, 221)
        ShowCap False
    End If
    
    '初始化菜单
    mnu_Sound.Checked = bPlaySound
    mnu_TopMost.Checked = bTopMost
    
    '初始化按键
    Dim I
    For I = 0 To cmdKey.UBound
        If IsExist("cmdKey", I) Then
            cmdKey(I).Style = ButtonStyle
            cmdKey(I).ForeColor = RGB(0, 0, 0)
        End If
    Next
    
    '打开保持队列
    TimerKeySeq.Enabled = True
End Sub

Public Sub keyUnload() '键盘注销
    '注销所有保持列表
    removeAllKeySeq
    TimerKeySeq.Enabled = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetNoFocus Me.hwnd, True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Not bDebug Then ShutdownWinIo
    keyUnload
    End
End Sub

Private Sub mnu_About_Click()
    frmAbout.Show vbModal
End Sub

Private Sub mnu_alpha_0_Click()
    alphaLevel = 255
    SetAlpha Me.hwnd, alphaLevel
    clsIni.WriteIniKey "Setup", "alphaLevel", CStr(alphaLevel)
End Sub

Private Sub mnu_alpha_20_Click()
    alphaLevel = 255 * (1 - 0.2)
    SetAlpha Me.hwnd, alphaLevel
    clsIni.WriteIniKey "Setup", "alphaLevel", CStr(alphaLevel)
End Sub

Private Sub mnu_alpha_50_Click()
    alphaLevel = 255 * (1 - 0.5)
    SetAlpha Me.hwnd, alphaLevel
    clsIni.WriteIniKey "Setup", "alphaLevel", CStr(alphaLevel)
End Sub

Private Sub mnu_alpha_80_Click()
    alphaLevel = 255 * (1 - 0.8)
    SetAlpha Me.hwnd, alphaLevel
    clsIni.WriteIniKey "Setup", "alphaLevel", CStr(alphaLevel)
End Sub

Private Sub mnu_alpha_Setup_Click()
    frmAlphaSetup.Show vbModal
End Sub

Private Sub mnu_Exit_Click()
    End
End Sub

Private Sub mnu_Full_Click()
    MsgBox "您当前已经是完整键盘模式！", vbInformation + vbOKOnly
End Sub

Private Sub mnu_Game_Click()
    Me.keyUnload
    frmGame.keyInit
    frmGame.Show
    Me.Hide
    lastMode = 3
    clsIni.WriteIniKey "Setup", "lastMode", CStr(lastMode)
End Sub

Private Sub mnu_HelpFile_Click()
    ShellExecute Me.hwnd, "open", "Readme.txt", "", App.Path, 5
End Sub

Private Sub mnu_KeyboardSetup_Click()
    frmKeyboardSetup.Show vbModal
End Sub

Private Sub mnu_Mini_Click()
    Me.keyUnload
    frmMini.keyInit
    frmMini.Show
    Me.Hide
    lastMode = 2
    clsIni.WriteIniKey "Setup", "lastMode", CStr(lastMode)
End Sub

Private Sub mnu_MouseSetup_Click()
    frmMouseSetup.Show vbModal
End Sub

Private Sub mnu_Sound_Click()
    mnu_Sound.Checked = Not mnu_Sound.Checked
    bPlaySound = mnu_Sound.Checked
    clsIni.WriteIniKey "Setup", "bPlaySound", CStr(bPlaySound)
End Sub

Private Sub mnu_Style_Click()
    ButtonStyle = ButtonStyle + 1
    If ButtonStyle > 2 Then ButtonStyle = 1
    RefreshButton
    clsIni.WriteIniKey "Setup", "ButtonStyle", CStr(ButtonStyle)
End Sub

Private Sub mnu_TopMost_Click()
    mnu_TopMost.Checked = Not mnu_TopMost.Checked
    bTopMost = mnu_TopMost.Checked
    SetTopMost Me.hwnd, bTopMost
    clsIni.WriteIniKey "Setup", "bTopMost", CStr(bTopMost)
End Sub

Private Sub TimerGetFocus_Timer()
    Dim point As POINTAPI, myRect As RECT
    GetCursorPos point
    GetWindowRect Me.hwnd, myRect
    If (point.X < myRect.Left Or point.X > myRect.Right) Or (point.Y < myRect.Top + 50 Or point.Y > myRect.Bottom) Then
        SetNoFocus Me.hwnd, False
    End If
End Sub

'判断数组控件是否存在
Private Function IsExist(ByVal ControlName As String, ByVal Index As Integer) As Boolean
'如果是发行版，则跳过所有异常的错误
    If gRelease Then On Error Resume Next
      Dim C As Control
      For Each C In Controls
        If C.Name = ControlName Then
            If C.Index = Index Then
                IsExist = True
                Exit Function
            End If
        End If
      Next C
      IsExist = False
End Function


Private Sub TimerKeySeq_Timer()
    Dim strKey, strCode As String
    For Each strKey In objKeySeq
        strCode = objKeySeq(strKey)
        If Left(strCode, 1) = "2" Or Not bCtrlKey(Mid(strCode, 3)) Then KeyDown Mid(strCode, 3) '扩展键不需要连续按住
        If Left(strCode, 1) = "2" Then '连击
            If Mid(strCode, 3, 1) = "1" Then Sleep CharKeyDelay Else Sleep CtrlKeyDelay
            KeyUp Mid(strCode, 3)
        End If
    Next
End Sub

Private Sub TimerPreKeySeq_Timer()
    addKeySeq preKeyCode, preAction
    TimerPreKeySeq.Enabled = False
    TimerPreKeySeq.Interval = 0
End Sub

'取消所有控制键按住状态
Private Sub UnHoldAllCtrl()

    bCtrlHold = False
    'Ctrl
    removeKeySeq cmdKey(67).Tag
    cmdKey(67).Style = ButtonStyle
    cmdKey(67).ForeColor = RGB(0, 0, 0)
    removeKeySeq cmdKey(73).Tag
    cmdKey(73).Style = ButtonStyle
    cmdKey(73).ForeColor = RGB(0, 0, 0)
    'Alt
    removeKeySeq cmdKey(69).Tag
    cmdKey(69).Style = ButtonStyle
    cmdKey(69).ForeColor = RGB(0, 0, 0)
    removeKeySeq cmdKey(71).Tag
    cmdKey(71).Style = ButtonStyle
    cmdKey(71).ForeColor = RGB(0, 0, 0)
    'Shift
    removeKeySeq cmdKey(55).Tag
    cmdKey(55).Style = ButtonStyle
    cmdKey(55).ForeColor = RGB(0, 0, 0)
    removeKeySeq cmdKey(66).Tag
    cmdKey(66).Style = ButtonStyle
    cmdKey(66).ForeColor = RGB(0, 0, 0)
    
    If getKeyState(VK_CAPITAL) Then ShowCap True Else ShowCap False
    ShowCharShift False
End Sub

'刷新符号上下档
Public Sub ShowCharShift(bUp As Boolean)
    If Not bUp Then
        Dim I
        For I = 0 To cmdKey.UBound
            If IsExist("cmdKey", I) Then
                '数字键
                If cmdKey(I).Tag = "131" Then cmdKey(I).Caption = "1"
                If cmdKey(I).Tag = "132" Then cmdKey(I).Caption = "2"
                If cmdKey(I).Tag = "133" Then cmdKey(I).Caption = "3"
                If cmdKey(I).Tag = "134" Then cmdKey(I).Caption = "4"
                If cmdKey(I).Tag = "135" Then cmdKey(I).Caption = "5"
                If cmdKey(I).Tag = "136" Then cmdKey(I).Caption = "6"
                If cmdKey(I).Tag = "137" Then cmdKey(I).Caption = "7"
                If cmdKey(I).Tag = "138" Then cmdKey(I).Caption = "8"
                If cmdKey(I).Tag = "139" Then cmdKey(I).Caption = "9"
                If cmdKey(I).Tag = "130" Then cmdKey(I).Caption = "0"
                
                '符号键
                If cmdKey(I).Tag = "1BC" Then cmdKey(I).Caption = ","
                If cmdKey(I).Tag = "1BE" Then cmdKey(I).Caption = "."
                If cmdKey(I).Tag = "1BF" Then cmdKey(I).Caption = "/"
                If cmdKey(I).Tag = "1BA" Then cmdKey(I).Caption = ";"
                If cmdKey(I).Tag = "1DE" Then cmdKey(I).Caption = "'"
                If cmdKey(I).Tag = "1DB" Then cmdKey(I).Caption = "["
                If cmdKey(I).Tag = "1DD" Then cmdKey(I).Caption = "]"
                If cmdKey(I).Tag = "1DC" Then cmdKey(I).Caption = "\"
                If cmdKey(I).Tag = "1C0" Then cmdKey(I).Caption = "`"
                If cmdKey(I).Tag = "1BD" Then cmdKey(I).Caption = "-"
                If cmdKey(I).Tag = "1BB" Then cmdKey(I).Caption = "="
                If cmdKey(I).Tag = "213" Then cmdKey(I).Caption = "Break"
            End If
        Next
    Else
        For I = 0 To cmdKey.UBound
            If IsExist("cmdKey", I) Then
                '数字键
                If cmdKey(I).Tag = "131" Then cmdKey(I).Caption = "!"
                If cmdKey(I).Tag = "132" Then cmdKey(I).Caption = "@"
                If cmdKey(I).Tag = "133" Then cmdKey(I).Caption = "#"
                If cmdKey(I).Tag = "134" Then cmdKey(I).Caption = "$"
                If cmdKey(I).Tag = "135" Then cmdKey(I).Caption = "%"
                If cmdKey(I).Tag = "136" Then cmdKey(I).Caption = "^"
                If cmdKey(I).Tag = "137" Then cmdKey(I).Caption = "&&"
                If cmdKey(I).Tag = "138" Then cmdKey(I).Caption = "*"
                If cmdKey(I).Tag = "139" Then cmdKey(I).Caption = "("
                If cmdKey(I).Tag = "130" Then cmdKey(I).Caption = ")"
                
                '符号键
                If cmdKey(I).Tag = "1BC" Then cmdKey(I).Caption = "<"
                If cmdKey(I).Tag = "1BE" Then cmdKey(I).Caption = ">"
                If cmdKey(I).Tag = "1BF" Then cmdKey(I).Caption = "?"
                If cmdKey(I).Tag = "1BA" Then cmdKey(I).Caption = ":"
                If cmdKey(I).Tag = "1DE" Then cmdKey(I).Caption = """"
                If cmdKey(I).Tag = "1DB" Then cmdKey(I).Caption = "{"
                If cmdKey(I).Tag = "1DD" Then cmdKey(I).Caption = "}"
                If cmdKey(I).Tag = "1DC" Then cmdKey(I).Caption = "|"
                If cmdKey(I).Tag = "1C0" Then cmdKey(I).Caption = "~"
                If cmdKey(I).Tag = "1BD" Then cmdKey(I).Caption = "_"
                If cmdKey(I).Tag = "1BB" Then cmdKey(I).Caption = "+"
                If cmdKey(I).Tag = "213" Then cmdKey(I).Caption = "Pause"
            End If
        Next
    End If
End Sub


'刷新所有按键样式
Public Sub RefreshButton()
    Dim I
    For I = 0 To cmdKey.UBound
        If IsExist("cmdKey", I) Then
            If cmdKey(I).Style <> 0 Then cmdKey(I).Style = ButtonStyle
        End If
    Next
End Sub

'刷新字母大小写
Public Sub ShowCap(bBig As Boolean)
    Dim I, addCode As Integer, newCode
    If bBig Then addCode = 0 Else addCode = 32
    For I = 0 To cmdKey.UBound
        If IsExist("cmdKey", I) Then
            If Len(cmdKey(I).Tag) = 3 Then
                newCode = Val("&H" & Right(cmdKey(I).Tag, 2))
                If newCode >= &H41 And newCode <= &H5A Then cmdKey(I).Caption = Chr(newCode + addCode)
            End If
        End If
    Next
End Sub
