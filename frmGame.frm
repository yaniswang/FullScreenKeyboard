VERSION 5.00
Object = "{653A556A-745E-476A-BB7C-20AB9DC0A4FB}#5.0#0"; "EXButton.ocx"
Begin VB.Form frmGame 
   BackColor       =   &H00A85E33&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "游戏键盘"
   ClientHeight    =   2475
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   6195
   Icon            =   "frmGame.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2475
   ScaleWidth      =   6195
   Begin VB.Timer TimerQuick 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   3240
      Top             =   1980
   End
   Begin VB.CheckBox chkSet 
      BeginProperty DataFormat 
         Type            =   4
         Format          =   "0%"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   2052
         SubFormatType   =   8
      EndProperty
      Height          =   180
      Left            =   120
      TabIndex        =   33
      Top             =   2040
      Width           =   195
   End
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   0
      Left            =   120
      TabIndex        =   23
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":08CA
      Style           =   1
      Caption         =   "Q1"
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
   Begin VB.PictureBox picPannel 
      AutoRedraw      =   -1  'True
      Height          =   1695
      Left            =   3840
      ScaleHeight     =   109
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   145
      TabIndex        =   22
      Tag             =   "^^^"
      ToolTipText     =   "双击打开游戏魔方功能"
      Top             =   600
      Width           =   2235
   End
   Begin VB.Timer TimerGetFocus 
      Interval        =   50
      Left            =   3540
      Top             =   1440
   End
   Begin VB.Timer TimerKeySeq 
      Interval        =   20
      Left            =   3540
      Top             =   1020
   End
   Begin VB.Timer TimerPreKeySeq 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   3540
      Top             =   660
   End
   Begin EXButton.ExBtn cmdKey 
      Height          =   375
      Index           =   89
      Left            =   1320
      TabIndex        =   0
      Tag             =   "227228"
      ToolTipText     =   "右下"
      Top             =   1440
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":0A2C
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
      Left            =   120
      TabIndex        =   1
      Tag             =   "225228"
      ToolTipText     =   "左下"
      Top             =   1440
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":0B8E
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
      Left            =   1320
      TabIndex        =   2
      Tag             =   "226227"
      ToolTipText     =   "右上"
      Top             =   600
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":0CF0
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
      Left            =   120
      TabIndex        =   3
      Tag             =   "225226"
      ToolTipText     =   "左上"
      Top             =   600
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":0E52
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
      Left            =   2040
      TabIndex        =   4
      Tag             =   "10D"
      ToolTipText     =   "回车"
      Top             =   1980
      Width           =   1035
      _ExtentX        =   1826
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":0FB4
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
      Index           =   70
      Left            =   840
      TabIndex        =   5
      Tag             =   "120"
      ToolTipText     =   "空格"
      Top             =   1980
      Width           =   1035
      _ExtentX        =   1826
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":1116
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
      Index           =   31
      Left            =   2880
      TabIndex        =   6
      Tag             =   "145"
      Top             =   600
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":1278
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "E"
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
      Left            =   2460
      TabIndex        =   7
      Tag             =   "157"
      Top             =   600
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":13DA
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "W"
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
      Left            =   2040
      TabIndex        =   8
      Tag             =   "151"
      Top             =   600
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":153C
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Q"
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
      Left            =   2880
      TabIndex        =   9
      Tag             =   "144"
      Top             =   1020
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":169E
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "D"
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
      Left            =   2460
      TabIndex        =   10
      Tag             =   "153"
      Top             =   1020
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":1800
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "S"
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
      Left            =   2040
      TabIndex        =   11
      Tag             =   "141"
      Top             =   1020
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":1962
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "A"
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
      Left            =   2880
      TabIndex        =   12
      Tag             =   "143"
      Top             =   1440
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":1AC4
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "C"
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
      Left            =   2460
      TabIndex        =   13
      Tag             =   "158"
      Top             =   1440
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":1C26
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "X"
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
      Left            =   720
      TabIndex        =   14
      Tag             =   "228"
      ToolTipText     =   "下"
      Top             =   1440
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":1D88
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
      Left            =   1320
      TabIndex        =   15
      Tag             =   "227"
      ToolTipText     =   "右"
      Top             =   1020
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":1EEA
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
      Left            =   720
      TabIndex        =   16
      Tag             =   "226"
      ToolTipText     =   "上"
      Top             =   600
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":204C
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
      Left            =   120
      TabIndex        =   17
      Tag             =   "225"
      ToolTipText     =   "左"
      Top             =   1020
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":21AE
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
      Left            =   2040
      TabIndex        =   18
      Tag             =   "15A"
      Top             =   1440
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":2310
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "Z"
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
      Left            =   3300
      TabIndex        =   19
      Tag             =   "152"
      Top             =   600
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":2472
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "R"
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
      Left            =   3300
      TabIndex        =   20
      Tag             =   "146"
      Top             =   1020
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":25D4
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "F"
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
      Left            =   3300
      TabIndex        =   21
      Tag             =   "156"
      Top             =   1440
      Width           =   375
      _ExtentX        =   0
      _ExtentY        =   0
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":2736
      ShowFoucs       =   0   'False
      Style           =   1
      Caption         =   "V"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   1
      Left            =   720
      TabIndex        =   24
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":2898
      Style           =   1
      Caption         =   "Q2"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   2
      Left            =   1320
      TabIndex        =   25
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":29FA
      Style           =   1
      Caption         =   "Q3"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   3
      Left            =   1920
      TabIndex        =   26
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":2B5C
      Style           =   1
      Caption         =   "Q4"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   4
      Left            =   2520
      TabIndex        =   27
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":2CBE
      Style           =   1
      Caption         =   "Q5"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   5
      Left            =   3120
      TabIndex        =   28
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":2E20
      Style           =   1
      Caption         =   "Q6"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   6
      Left            =   3720
      TabIndex        =   29
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":2F82
      Style           =   1
      Caption         =   "Q7"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   7
      Left            =   4320
      TabIndex        =   30
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":30E4
      Style           =   1
      Caption         =   "Q8"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   8
      Left            =   4920
      TabIndex        =   31
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":3246
      Style           =   1
      Caption         =   "Q9"
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
   Begin EXButton.ExBtn cmdQuick 
      Height          =   375
      Index           =   9
      Left            =   5520
      TabIndex        =   32
      Top             =   120
      Width           =   555
      _ExtentX        =   979
      _ExtentY        =   661
      MousePointer    =   99
      MouseIcon       =   "frmGame.frx":33A8
      Style           =   1
      Caption         =   "Q10"
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
   Begin VB.Menu mnu_Mode 
      Caption         =   "切换键盘(&K)"
      Begin VB.Menu mnu_Full 
         Caption         =   "完整键盘(&F)"
      End
      Begin VB.Menu mnu_Mini 
         Caption         =   "迷你键盘(&M)"
      End
      Begin VB.Menu mnu_Game 
         Caption         =   "游戏键盘(&G)"
         Checked         =   -1  'True
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
Attribute VB_Name = "frmGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private preKeyCode As String, preAction As Integer
Private bCtrlHold As Boolean
Private bQuickInitStart As Boolean, strQuickKeySeq As String, strQuickKeySeqTip As String
Private objQuickKeySeq As Scripting.Dictionary
Private bMagicBoxOpen As Boolean, strLockDirection As String, lastX As Long, lastY As Long  '手势面板

Private Sub chkSet_Click()
    bQuickInitStart = chkSet.Value
    If Not bQuickInitStart Then bQuickInitStart = False: strQuickKeySeq = "": strQuickKeySeqTip = ""
End Sub

Private Sub cmdKey_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeySpace Then KeyCode = 0
End Sub

Private Sub cmdKey_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    '鼠标按下
    If cmdKey(Index).Caption = "Num" Or cmdKey(Index).Caption = "Scroll" Or cmdKey(Index).Caption = "Caps" Then Exit Sub
    Dim Action As Integer, strKeyCode As String, Delay As Integer
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
                If bQuickInitStart Then
                    strQuickKeySeq = strQuickKeySeq & "1-" & strKeyCode & "|"
                    strQuickKeySeqTip = strQuickKeySeqTip & cmdKey(Index).Caption & ":Down,"
                End If
                If Action = 2 Then
                    Sleep Delay '连击必需要延迟
                    If bQuickInitStart Then strQuickKeySeq = strQuickKeySeq & "3-" & FixLen(Delay, 3) & "|"
                    KeyUp strKeyCode
                    If bQuickInitStart Then
                        strQuickKeySeq = strQuickKeySeq & "2-" & strKeyCode & "|"
                        strQuickKeySeqTip = strQuickKeySeqTip & cmdKey(Index).Caption & ":Up,"
                    End If
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
                    If bQuickInitStart Then strQuickKeySeq = strQuickKeySeq & "3-" & FixLen(Delay, 3) & "|"
                    KeyUp strKeyCode
                    If bQuickInitStart Then
                        strQuickKeySeq = strQuickKeySeq & "2-" & strKeyCode & "|"
                        strQuickKeySeqTip = strQuickKeySeqTip & cmdKey(Index).Caption & ":Up,"
                    End If
                End If
                removeKeySeq strKeyCode
            Case 3, 4 '保持按住，保持连按
                If cmdKey(Index).Style <> 0 Then '开始保持
                    addKeySeq strKeyCode, Action - 2
                    cmdKey(Index).Style = 0
                    If Action = 3 Then cmdKey(Index).ForeColor = RGB(0, 0, 255) Else cmdKey(Index).ForeColor = RGB(255, 0, 0)
                    If Action = 3 And bQuickInitStart Then
                        strQuickKeySeq = strQuickKeySeq & "1-" & strKeyCode & "|"
                        strQuickKeySeqTip = strQuickKeySeqTip & cmdKey(Index).Caption & ":Down,"
                    End If
                Else '结束保持
                    removeKeySeq strKeyCode
                    cmdKey(Index).Style = ButtonStyle
                    cmdKey(Index).ForeColor = RGB(0, 0, 0)
                    If Action = 3 And bQuickInitStart Then
                        If Right(strQuickKeySeqTip, 5) = "Down," Then strQuickKeySeq = strQuickKeySeq & "3-" & FixLen(Delay, 3) & "|" '状态变更时才需要延迟
                        strQuickKeySeq = strQuickKeySeq & "2-" & strKeyCode & "|"
                        strQuickKeySeqTip = strQuickKeySeqTip & cmdKey(Index).Caption & ":Up,"
                    End If
                End If
        End Select
    End If
End Sub


Private Sub cmdQuick_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    '快捷按下
    If Not bQuickInitStart Then '初始化状态
        Dim Action As Integer, strKeyCode As String
        Action = MouseAction(Button)
        strKeyCode = cmdQuick(Index).Tag
        If strKeyCode = "" Then Exit Sub
        If Action <> 0 Then
            Select Case Action
                Case 1
                    executeQuickKey strKeyCode
                Case 2
                    addQuickKey cmdQuick(Index).Caption, strKeyCode
            End Select
        End If
    End If
End Sub

Private Sub cmdQuick_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    '快捷按起
    If bPlaySound Then sndPlaySound App.Path & "\ClickDn.wav", SND_ASYNC
    
    Dim I
    If bQuickInitStart Then '初始化状态
        If strQuickKeySeq <> "" Then '初始化结束
            cmdQuick(Index).Tag = Left(strQuickKeySeq, Len(strQuickKeySeq) - 1)
            cmdQuick(Index).ToolTipText = Left(strQuickKeySeqTip, Len(strQuickKeySeqTip) - 1)
            strQuickKeySeq = ""
            strQuickKeySeqTip = ""
        End If
    Else
        Dim Action As Integer, strKeyCode As String
        Action = MouseAction(Button)
        strKeyCode = cmdQuick(Index).Tag
        If strKeyCode = "" Then Exit Sub
        If Action <> 0 Then
            Select Case Action
                Case 2
                    removeQuickKey cmdQuick(Index).Caption
                Case 4
                    If cmdQuick(Index).Style <> 0 Then '开始保持
                        addQuickKey cmdQuick(Index).Caption, strKeyCode
                        cmdQuick(Index).Style = 0
                        cmdQuick(Index).ForeColor = RGB(255, 0, 0)
                    Else '结束保持
                        removeQuickKey cmdQuick(Index).Caption
                        cmdQuick(Index).Style = ButtonStyle
                        cmdQuick(Index).ForeColor = RGB(0, 0, 0)
                    End If
            End Select
        End If
    End If
End Sub

Private Sub Form_Load()
    
    '初始化窗口
    SetTopMost Me.hwnd, True
    Me.Left = Screen.Width / 2 - Me.Width / 2
    Me.Top = Screen.Height - Me.Height - 1500
        
    '进行键盘初始化
    keyInit

    '初始化变量
    bCtrlHold = False
    strQuickKeySeq = ""
    strQuickKeySeqTip = ""
    bQuickInitStart = False
    Set objQuickKeySeq = New Scripting.Dictionary
    
End Sub

Public Sub keyInit() '键盘初始化
    
    '设置透明度
    SetAlpha Me.hwnd, alphaLevel
    
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
    For I = 0 To cmdQuick.UBound
        If IsExist("cmdQuick", I) Then
            cmdQuick(I).Style = ButtonStyle
            cmdQuick(I).ForeColor = RGB(0, 0, 0)
        End If
    Next
    
    '初始化面板
    Dim j, w, h
    w = picPannel.ScaleWidth / 3
    h = picPannel.ScaleHeight / 3
    For I = 1 To 2
        picPannel.Line (0, h * I)-(w * 3, h * I), RGB(183, 177, 193), BF
    Next
    For I = 1 To 2
        picPannel.Line (w * I, 0)-(w * I, h * 3), RGB(183, 177, 193), BF
    Next
    bMagicBoxOpen = False
    
    '打开保持队列
    TimerKeySeq.Enabled = True
    TimerQuick.Enabled = True
End Sub

Public Sub keyUnload() '键盘注销
    '注销所有保持列表
    removeAllKeySeq
    TimerKeySeq.Enabled = False
    TimerQuick.Enabled = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetNoFocus Me.hwnd, True
    picPannel_LostFocus
End Sub

Private Sub Form_Unload(Cancel As Integer)
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
    lastMode = 1
    Me.keyUnload
    frmFull.keyInit
    frmFull.Show
    Me.Hide
    clsIni.WriteIniKey "Setup", "lastMode", CStr(lastMode)
End Sub

Private Sub mnu_Game_Click()
    MsgBox "您当前已经是游戏键盘模式！", vbInformation + vbOKOnly
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



Private Sub picPannel_DblClick()
    '开关
    If Not bMagicBoxOpen Then bMagicBoxOpen = True
End Sub

Private Sub picPannel_LostFocus()
    If strLockDirection <> "" Then KeyUp strLockDirection
End Sub

Private Sub picPannel_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '鼠标按下
    If Not bMagicBoxOpen Then Exit Sub
    
    If Not bQuickInitStart Then '非初始化状态
        Dim arrKeyCode, strKeyCode As String
        arrKeyCode = Split(picPannel.Tag, "^")
        strKeyCode = arrKeyCode(Button - 1)
        If strKeyCode = "" Then Exit Sub
        If bSingleKey(strKeyCode) Then
            addKeySeq Mid(strKeyCode, 3, 3), 1
        Else
            addQuickKey "PannelClick" & Button, strKeyCode
        End If
    End If
End Sub

Private Sub picPannel_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '鼠标按起
    If bPlaySound Then sndPlaySound App.Path & "\ClickDn.wav", SND_ASYNC
    
    Dim arrKeyCode, strKeyCode As String
    If bQuickInitStart Then '初始化状态
        If strQuickKeySeq <> "" Then '初始化结束
            arrKeyCode = Split(picPannel.Tag, "^")
            arrKeyCode(Button - 1) = Left(strQuickKeySeq, Len(strQuickKeySeq) - 1)
            picPannel.Tag = Join(arrKeyCode, "^")
            strQuickKeySeq = ""
            strQuickKeySeqTip = ""
        End If
    Else
        If Not bMagicBoxOpen Then Exit Sub
        arrKeyCode = Split(picPannel.Tag, "^")
        strKeyCode = arrKeyCode(Button - 1)
        If strKeyCode = "" Then Exit Sub
        If bSingleKey(strKeyCode) Then
            removeKeySeq Mid(strKeyCode, 3, 3)
        Else
            removeQuickKey "PannelClick" & Button
        End If
    End If
End Sub

Private Function bSingleKey(strKeyCode) As Boolean
    Dim arrKey
    bSingleKey = False
    If strKeyCode <> "" Then
        arrKey = Split(strKeyCode, "|")
        If UBound(arrKey) = 2 Then
            If Mid(arrKey(0), 3) = Mid(arrKey(2), 3) Then
                bSingleKey = True
            End If
        End If
    End If
End Function

Private Sub picPannel_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '鼠标移动
    If Not bMagicBoxOpen Then Exit Sub
    
    Dim tempDirection As String, w, h, xx, yy
    w = picPannel.ScaleWidth / 3
    h = picPannel.ScaleHeight / 3
    xx = X / w
    yy = Y / h
    If yy < 1 Then
        If xx < 1 Then '左上
            tempDirection = "225226"
        ElseIf xx > 1 And xx < 2 Then '上
            tempDirection = "226"
        ElseIf xx > 2 And xx < 3 Then '右上
            tempDirection = "226227"
        End If
    ElseIf yy > 1 And yy < 2 Then
        If xx < 1 Then '左
            tempDirection = "225"
        ElseIf xx > 1 And xx < 2 Then '中
            tempDirection = ""
        ElseIf xx > 2 And xx < 3 Then '右
            tempDirection = "227"
        End If
    ElseIf yy > 2 And yy < 3 Then
        If xx < 1 Then '左下
            tempDirection = "225228"
        ElseIf xx > 1 And xx < 2 Then '下
            tempDirection = "228"
        ElseIf xx > 2 And xx < 3 Then '右下
            tempDirection = "227228"
        End If
    End If
    If strLockDirection <> "" Then KeyUp strLockDirection
    strLockDirection = tempDirection
    KeyDown strLockDirection
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


'刷新所有按键样式
Public Sub RefreshButton()
    Dim I
    For I = 0 To cmdKey.UBound
        If IsExist("cmdKey", I) Then
            If cmdKey(I).Style <> 0 Then cmdKey(I).Style = ButtonStyle
        End If
    Next
    For I = 0 To cmdQuick.UBound
        If IsExist("cmdQuick", I) Then
            If cmdQuick(I).Style <> 0 Then cmdQuick(I).Style = ButtonStyle
        End If
    Next
End Sub

'执行单个宏
Private Sub executeQuickKey(strKeyCode As String)
    If strKeyCode <> "" Then
        Dim arrKeyCode, strCode As String
        arrKeyCode = Split(strKeyCode, "|")
        For I = 0 To UBound(arrKeyCode)
            strCode = arrKeyCode(I)
            Select Case Left(strCode, 1)
                Case "1"
                    KeyDown Mid(strCode, 3)
                Case "2"
                    KeyUp Mid(strCode, 3)
                Case "3"
                    Sleep Val(Mid(strCode, 3))
            End Select
        Next
    End If
End Sub

'添加快捷宏
Private Sub addQuickKey(strID As String, strKeyCode As String)
    If Not objQuickKeySeq.Exists(strID) Then
        objQuickKeySeq.Add strID, strKeyCode
    End If
End Sub

'删除快捷宏
Private Sub removeQuickKey(strID As String)
    If objQuickKeySeq.Exists(strID) Then
        objQuickKeySeq.Remove strID
    End If
End Sub

'删除所有快捷宏
Private Sub removeAllQuickKey()
    objQuickKeySeq.RemoveAll
End Sub

Private Sub TimerQuick_Timer()
    Dim strKey, strCode As String
    For Each strKey In objQuickKeySeq
        strCode = objQuickKeySeq(strKey)
        If strCode <> "" Then executeQuickKey strCode
    Next
End Sub
