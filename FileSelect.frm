VERSION 5.00
Begin VB.Form FileSelect 
   Caption         =   "ÉfÅ[É^ÉtÉ@ÉCÉãëIë"
   ClientHeight    =   3408
   ClientLeft      =   912
   ClientTop       =   1392
   ClientWidth     =   9432
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'Z µ∞¿ﬁ∞
   ScaleHeight     =   3408
   ScaleWidth      =   9432
   Begin VB.CommandButton Command2 
      Caption         =   "ê›íË"
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   0
      Left            =   3348
      TabIndex        =   6
      Top             =   2808
      Width           =   1380
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ñﬂÇÈ"
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   1
      Left            =   4824
      TabIndex        =   5
      Top             =   2808
      Width           =   1380
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Ã◊Øƒ
      BorderStyle     =   0  'Ç»Çµ
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   10.8
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   1
      Left            =   1404
      TabIndex        =   4
      Text            =   "c:\isi\users\a68056\start\start_F370CE_LOGIC.ms"
      Top             =   2124
      Width           =   5760
   End
   Begin VB.CommandButton Command1 
      Caption         =   "éQè∆"
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   264
      Index           =   1
      Left            =   7272
      TabIndex        =   3
      Top             =   2124
      Width           =   660
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Ã◊Øƒ
      BorderStyle     =   0  'Ç»Çµ
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   10.8
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   1404
      TabIndex        =   1
      Text            =   "c:\isi\users\a68056\start\start_F370CE_LOGIC.ms"
      Top             =   1548
      Width           =   5760
   End
   Begin VB.CommandButton Command1 
      Caption         =   "éQè∆"
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   264
      Index           =   0
      Left            =   7272
      TabIndex        =   0
      Top             =   1548
      Width           =   660
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ÉfÅ[É^ÉtÉ@ÉCÉãëIë"
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   684
      TabIndex        =   7
      Top             =   540
      Width           =   1920
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ÅÉÉfÅ[É^ÉtÉ@ÉCÉãñºÅÑ"
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   14
      Left            =   2952
      TabIndex        =   2
      Top             =   1080
      Width           =   2160
   End
End
Attribute VB_Name = "FileSelect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click(Index As Integer)
Dim fDir$, fname$
    fname = "*.*"
    rflg = False
    Call GenFile.SetCtrl("ÉtÉ@ÉCÉãì«çû", "ì«çû", "éÊè¡")
    Call GenFile.SetFile(cLoad, fDir, "*.*", fname)
    GenFile.Show vbModal
    Call GenFile.GetFile(rflg, fDir, fname)
    Set GenFile = Nothing
    If rflg Then
      Screen.MousePointer = 11
      '
      Text1(Index) = fDir$ & fname
      '
      Screen.MousePointer = 0
    End If
End Sub

Private Sub Command2_Click(Index As Integer)
Select Case Index
Case 0  'ê›íË
  GetData
  
Case 1  'ñﬂÇÈ
  
End Select
  
End Sub

Private Sub GetData()
Dim i%
  For i = 0 To 1
    gFlName(i) = Trim(Text1(i))
  Next i
End Sub

Private Sub SetData()
Dim i%
  For i = 0 To 1
    Text1(i) = Trim(gFlName(i))
  Next i
End Sub


Private Sub Form_Load()
  SetData
End Sub
