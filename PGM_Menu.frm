VERSION 5.00
Begin VB.Form PGM_Menu 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00E0E0E0&
   Caption         =   "���j���["
   ClientHeight    =   6408
   ClientLeft      =   48
   ClientTop       =   348
   ClientWidth     =   8304
   ControlBox      =   0   'False
   FillColor       =   &H00C0C0C0&
   ForeColor       =   &H00800000&
   LinkTopic       =   "Form1"
   ScaleHeight     =   6408
   ScaleWidth      =   8304
   StartUpPosition =   3  'Windows �̊���l
   Begin VB.VScrollBar VScroll1 
      Height          =   492
      Left            =   6000
      TabIndex        =   36
      Top             =   4200
      Width           =   372
   End
   Begin VB.Timer Timer2 
      Interval        =   200
      Left            =   240
      Top             =   1080
   End
   Begin VB.TextBox Text1 
      Alignment       =   1  '�E����
      Appearance      =   0  '�ׯ�
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   264
      Index           =   0
      Left            =   6360
      LinkTimeout     =   2
      TabIndex        =   33
      Text            =   "2"
      Top             =   4320
      Width           =   732
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  '�ׯ�
      Caption         =   "�����J�n"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   10.8
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Index           =   1
      Left            =   4320
      TabIndex        =   32
      Top             =   4200
      Width           =   1236
   End
   Begin VB.CommandButton Command2 
      Caption         =   "�^�󓞒B"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   10.8
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   0
      Left            =   240
      TabIndex        =   29
      Top             =   5280
      Visible         =   0   'False
      Width           =   1236
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�J�E���^���Z�b�g"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   444
      Index           =   8
      Left            =   1260
      TabIndex        =   24
      Top             =   3960
      Width           =   2244
   End
   Begin VB.CommandButton Command1 
      Caption         =   "G  ���_�o�����s"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   11.4
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   7
      Left            =   240
      TabIndex        =   22
      Top             =   5760
      Width           =   2244
   End
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   324
      Top             =   216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�X�P�[���ύX"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   444
      Index           =   6
      Left            =   1260
      TabIndex        =   19
      Top             =   3360
      Width           =   2244
   End
   Begin VB.CommandButton Command2 
      Caption         =   "�I��"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   10.8
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   6
      Left            =   6444
      TabIndex        =   18
      Top             =   5760
      Width           =   1236
   End
   Begin VB.CommandButton Command2 
      Caption         =   "edit"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   10.8
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   5
      Left            =   5148
      TabIndex        =   17
      Top             =   5760
      Width           =   1236
   End
   Begin VB.CommandButton Command2 
      Caption         =   "������"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   10.8
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   4
      Left            =   3852
      TabIndex        =   16
      Top             =   5760
      Width           =   1236
   End
   Begin VB.CommandButton Command2 
      Caption         =   "�Ǐo��"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   10.8
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   3
      Left            =   2556
      TabIndex        =   15
      Top             =   5760
      Width           =   1236
   End
   Begin VB.CommandButton Command1 
      Caption         =   "I O �`�F�b�N"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   324
      Index           =   5
      Left            =   5640
      TabIndex        =   6
      Top             =   3600
      Width           =   1524
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�f�[�^�o��"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   444
      Index           =   3
      Left            =   1260
      TabIndex        =   5
      Top             =   2676
      Width           =   2244
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�A�����`"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   444
      Index           =   2
      Left            =   1260
      TabIndex        =   4
      Top             =   2076
      Width           =   2244
   End
   Begin VB.CommandButton Command1 
      Caption         =   "1�񐬌`"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   444
      Index           =   0
      Left            =   1260
      TabIndex        =   3
      Top             =   1440
      Width           =   2244
   End
   Begin VB.Label Label1 
      BackColor       =   &H00E0E0E0&
      Caption         =   "LS-31/32 Ver.190505c"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   252
      Index           =   13
      Left            =   3120
      TabIndex        =   35
      Top             =   600
      Width           =   2652
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "��"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   12
      Left            =   7200
      TabIndex        =   34
      Top             =   4320
      Width           =   276
   End
   Begin VB.Label Label2 
      Alignment       =   1  '�E����
      BackColor       =   &H8000000E&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   7
      Left            =   5628
      TabIndex        =   31
      Top             =   3240
      Width           =   1500
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "���x�ݒ�d��"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   8
      Left            =   4080
      TabIndex        =   30
      Top             =   3240
      Width           =   1524
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "��"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   11
      Left            =   7320
      TabIndex        =   28
      Top             =   1596
      Width           =   276
   End
   Begin VB.Label Label2 
      Alignment       =   1  '�E����
      BackColor       =   &H8000000E&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   6
      Left            =   5652
      TabIndex        =   27
      Top             =   1560
      Width           =   1500
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "�V���b�g���s"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   10
      Left            =   3960
      TabIndex        =   26
      Top             =   1560
      Width           =   1548
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   5
      Left            =   1680
      TabIndex        =   25
      Top             =   5280
      Width           =   780
   End
   Begin VB.Label Label2 
      Alignment       =   2  '��������
      AutoSize        =   -1  'True
      BackColor       =   &H00E0E0E0&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   14.4
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   285
      Index           =   4
      Left            =   3885
      TabIndex        =   23
      Top             =   5280
      Width           =   780
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   9
      Left            =   4824
      TabIndex        =   21
      Top             =   2892
      Width           =   516
   End
   Begin VB.Label Label2 
      Alignment       =   1  '�E����
      BackColor       =   &H8000000E&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   3
      Left            =   5652
      TabIndex        =   20
      Top             =   2856
      Width           =   1500
   End
   Begin VB.Label Label2 
      BackColor       =   &H8000000E&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   2
      Left            =   2850
      TabIndex        =   14
      Top             =   4725
      Width           =   4560
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "����t�@�C�����F"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   7
      Left            =   825
      TabIndex        =   13
      Top             =   4725
      Width           =   2025
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "�j��"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   6
      Left            =   7272
      TabIndex        =   12
      Top             =   2496
      Width           =   516
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   5
      Left            =   7272
      TabIndex        =   11
      Top             =   1992
      Width           =   516
   End
   Begin VB.Label Label2 
      Alignment       =   1  '�E����
      BackColor       =   &H8000000E&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   1
      Left            =   5652
      TabIndex        =   10
      Top             =   2460
      Width           =   1500
   End
   Begin VB.Label Label2 
      Alignment       =   1  '�E����
      BackColor       =   &H8000000E&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   5652
      TabIndex        =   9
      Top             =   1992
      Width           =   1500
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   4
      Left            =   4824
      TabIndex        =   8
      Top             =   2496
      Width           =   516
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "�y�ʒu"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   3
      Left            =   4644
      TabIndex        =   7
      Top             =   2028
      Width           =   768
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "���j�^"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   2
      Left            =   5880
      TabIndex        =   2
      Top             =   1080
      Width           =   768
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "��  �`"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   12
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   1
      Left            =   1875
      TabIndex        =   1
      Top             =   1050
      Width           =   795
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '����
      Caption         =   "Precision Glass Mold System"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   19.8
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   396
      Index           =   0
      Left            =   1548
      TabIndex        =   0
      Top             =   144
      Width           =   5508
   End
End
Attribute VB_Name = "PGM_Menu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'    PGM_Menu
'
'            update: 2002.8.10 s.f roz(0),roz(1)��˓����`�����Ұ���'
'            update: 2002.10.16 KYOCERA �ƭ���ʋN�����̌��_�M���o��ON��OFF
'�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@"���_"�������OrgON�ǉ�
'            update: 2002.10.17 KYOCERA ���_���A��ɏ��񌴓_���A�����׸�gOrgStartFlg��ON
'                                       ���_�M������ϰ�ŊĎ�
'                                       ���_�łȂ��Ǝ������`Ӱ�ވڍs�s��
'            update: 2002.10.18 KYOCERA ���_�\���̏C�� If gOrgStartFlg = False Then...End If�ǉ�
'            update: 2002.10.25 s.f. Ver�D�\���C��
'            update: 2002.10.26 s.f. �u�^�󓞒B�v������
'            update: 2003. 8.26 s.f. * �w�舳�́{�Q�O�O�j���ȏ�Ŕ���~ *
'            update: 2003. 9.11 s.f. LS21_TC�@���`�I�����̔���~�G���[�΍�
'            update: 2003. 9.12 s.f. genten()�@���_�o����@HiSpeed���w��l�ɖ߂��B
'
'            update: 2003.12.15 s.f. LS-32���グ�ɔ����ύX�@MplDef.bas�@�̂݁@�V�K�@2003.11.04�t��
'�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@����ɔ����@PGM_Menu��VER���ް���@LS-32�@�֕ύX
'
'            update: 2004. 3. 8 s.f. LS21_SC �ύX�@���`�����䃂�[�h�@�f�V�f�ǉ��@�i�㎲�Փ˔���t�j
'                                    RecEmgDTsave ����~���b�Z�[�W�̕ۑ�
'            update: 2004. 3.12 s.f.  ���x�w�ߓd���@�\��
'            update: 2004. 3.20 s.f.  LS31�ֈڐA�@MplDef.bas�̂݁@��Ver�@2002.1.13�t���֖߂��B
'
'            update: 2004.3.20  s.f. MYEdit.frm�@�́@SetData(),GetData()�@��ύX�i3/8�ύX�̃o�O�C���@'edit'�̓ǂݍ��ݏ����o���G���[�j
'�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@���������ށ@7�ǉ��F ���ݗL���R�}���h 0,1,2,3,7,8,9
'
'            update: 2004. 3.30 s.f   ����~ү���ރo�O�C��
'            update: 2004. 4.23 s.f   timeup�Ŕ���~
'            update: 2004. 4.24 s.f.  LS21_TC���̃J�E���^�A�����сA�\���@����
'
'            update: 2004.4.25  s.f   Myedit�@��  VScroll1(j).min = 210 * lK1     "200"��"210"�֕ύX
'            update: 2004.5. 5  s.f   ���x�W���A�����␳���[�`���@�ǉ�  PGM_KTD,My_lib,MYEDIT, LS21_SC, LS21_TC
'            update: 2004.5.12  s.f   PGM_KTD�@"���ް�۰"�΍�@�@wTm0!,wTm1!  global��,  LS21_SC�Ɓ@LS21_TC ����@dim�폜
'            update: 2004.5.17  s.f   'S'����ށ@�o�O�΍�
'            update: 2004.5.18  s.f   �o�O�΍� & T�W���\��
'            update: 2004.6. 5  s.f   �uV�G�f�B�b�g�v��\���F�ύX
'            update: 2004.8.17  s.f   ���ް�۰"�΍�  p(ist0)��pp��  �h�F�h�����̍s�𖳂���
'            update: 2004.8.27 - 10.30 s.f   T�W���֐��ύX�A0.01=1�� �u�c�b�@�O�v�R�}���h�@���`�O�Ɍ^�ݔۃ`�F�b�N�Z���T�[�̃`�F�b�N�@�\�ǉ�
'            update: 2004.10.30 s.f   ���`�v���Z�X�O���t�\���@���x�\���F�@�ΐF�֕ύX
'            update: 2004.11.2 s.f     T�W���֐��ύX�@���֖߂��B
'            update: 2004.12.20 s.f    LS21_TC  DC�R�}���h�@�@�o�O�C��
'            update: 2005. 5.25 s.f    Version No�\���ǉ�
'            update: 2005. 7.18 s.f    �������ԁ@���ϒl�\��,1�񐬌`��̗�p�ǉ�
'            update: 2005. 7.25 s.f    �������Ԑ���̃f�o�b�O
'            update: 2005. 9.27 s.f   �ۉ���~���[�h�@�ǉ�
'            update: 2005. 9.28 s.f   T�W���@�\���F�ύX
'            update: 2005. 9.28a s.f  ��L�f�o�b�O  �^���Ȃ����́@�ۉ���~�@���{���Ȃ�
'            update: 2005.11. 4 s.f  LS21_SC�@�\���ύX�B���x����d���\���폜�BT�W���AZ�R�␳�\�����ύX,�������Ԑ���o�O�C��
'            update: 2005.11. 6 s.f   �I�[�o�[�t���[�΍� idc65536,idc256,ddc05, my_lib ���ւ��@long,double�w���
'                                      Mpldef �ύX�@C870contini
'            update: 2005.11.22 s.f   Melec C-870 counter����o�O�C���@�R���y�A�J�E���^�l�Z�b�g���@�������]�@�@setcm1
'                                     �I�[�o�[�t���[�G���[�΍�@idc16777216�Aidc8388607�@�ǉ�
'            update: 2005.11.23 s.f   11/22 �ύX�̃o�O�C���@���`������@�uC870sts�@reset����܂Ł@�ǂݔ�΂��v���@����
'�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��ʉ��\���@�V���v�����@�i�X�s�[�h�ቺ�h�~�ׁ̈j
'            update: 2005.11.26 s.f   ���ׂẮ@function�@�Ɂ@�^�錾������@�@�@overflow�΍�
'                                     ���ׂẮ@sub�@�̈����Ɂ@�^�錾������
'                                     sdata,
'            update: 2005.12.17 s.f  LS21-SC,  LS21-TC �ύX �A�@�ŋߕp���� timeup �΍�
'                                    Do-Loop �O�́@DoEvent�폜 OverFlow �΍� s.f.
'                                    �R�}���h�́@evtime�@��荞�݂��@�R�}���h�J�n���֕ύX
'�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@DC�R�}���h�@LA�R�}���h�@�ă`�F�b�N�C��
'�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�A���O�R�}���h�@evtime�@�Ɓ@fintime�@�\�L����ւ�
'
'            update: 2006. 3. 3 s.f  edit �g�p���@do�@loop���甲����
'            update: 2006. 4.14 s.f  on error goto ������
'            update: 2006. 4.15 s.f  error �\���A�����񐔃X�N���[���w��
'            update: 2006. 5. 9 s.f  O.F.error �\���@������@end3�@�ǉ�,  tstime=0#
'            update: 2006. 5.14 s.f �@r_pres()�́@DoEvents �@ for�̊O�ֈړ��@s.f  ���̂���������
'�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@  ���ׂĔ����Ɓ@LS_TC�@�v���O�����\������iLS_SC�́@OK)�f
'            update: 2006. 5.15 s.f  5���ԕۉ���~�@�ǉ�
'            update: 2006. 5.18 s.f �@r_pres()�́@DoEvents �@�폜�A�@�hJ"�A�hS"�Ɂ@Doevents�@�ǉ�
'                                     myEdit �ց@LA�ADC�@�ǉ�
'            update: 2006. 5.19 s.f �@My_edit������@�������@�Ăяo���A�@myedit�́@DC�@�폜
'            update: 2006. 5.23 s.f �@cal_pid �ύX overFlow �΍�
'            update: 2006. 5.26 s.f �@AdRead ppos �c�C�J
'            update: 2006. 7.12 s.f   My_lib  r_z!()  w1,w2,w3 long �� integer  (overflow �΍�) ���ꂪ�^�����H
'            update: 2006. 7.12 s.f  �������Ԏ��������@�f�L���f��
'            update: 2006. 8. 2 s.f  �u1�񐬌`�v��p���ԃJ�E���g�_�E���@�o�O�C��
'            update: 32-V3.80506   2008. 5. 2 s.f  �ۉ���~�E�T���~�߁@�����ύX�@�i�I�[�o�[�t���[�΍�j
'            update: 32-V3.80506A  2009. 5.22 s.f  ���`�f�[�^�t�@�C���ց@���`�v���Z�X�f�[�^�������ݒǉ�(Recdtsave999)
'            update: 32-V3.80506B  2013.10.07 s.f  �����␳�@�}0.05��+0.05/-0.5�ց@�ύX
'            update: LS31&32-V190505 2019.5.5 s.f  LS31-161213��LS32-80506B�̓���
'                                                  �^���\���A�^No�\���A�^�ʂ̐��`���J�E���g�A�b�v,
'                                                  30���g����'
'            update: LS31&32-V190505a 2019.5.7 s.f  �\���o�O�C��
'            update: LS31&32-V190505b 2019.5.11 s.f  �\���o�O�C�� katamax�̒l�ɂ��A�^���\���AMyEdit�̕\��������
'                                                   �^���\���ʒu�i�v���O�������̏ꏊ�j�ύX�B�������[�v������1��̐��`�J�n���ֈړ�
'                                                   Cox�f�[�^�̃f�B�X�N�ۑ��i����j
'            update: LS31&32-V190505c 2019.5.20 s.f  �\���o�O�C���A�^���\���ʒu�@�hXR"�֖߂��B���`���^�L��idcflg(0)=0���J�E���g�A�b�v�֒ǉ�
'
'------------------------------------------------------------------------------------------
'
'
'**********************************************************************
Option Explicit
'
'Dim pv_ch!        '/* �}�j���A�����̑��x�^�ʒu�؂芷���l*/
Dim di_d2%         '/* DIO_P�@2�߰ā@�ޯ̧ */
'
Dim OrgFlg%         '���_�o��
Dim MemoFlg%        '������
Dim NextView%
Dim TrnsMax%        '������
Dim TrnsCnt%        '�����J�E���^
Dim lTrnsFLg%       '�������t���O
Dim lK1%            '�񐔃J�E���^


Private Sub Command1_Click(Index As Integer)
Select Case Index
Case 0  '���`�I�����[
  FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
  NextView = 1                          '���`�i�I�����[�j
Case 1  '���`�i�_�u���j
  
Case 2  '�A�����`��ʁi�V���O���j
  FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
  NextView = 2                          '���`�i�V���O���j
Case 3  '�f�[�^�o��
  FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
  NextView = 3                          '�f�[�^�o��
Case 4  '�e�B�[�`���O
  NextView = 9
Case 5  'I O �`�F�b�N
  FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
  NextView = 4                           '
  'Unload Me
  'IOChk.Show 1
  'adMain.Show
  'Sampling.Show
  'OutBox.Show
  'MplVbSmp.Show
Case 6  '�X�P�[���ύX
  FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
  NextView = 5                           '
Case 7  '���_�o�����s
  OrgFlg = True       '���_�o��
  'genten
Case 8  '�J�E���^���Z�b�g
  InitDat(11) = 0                 '���`�J�E���^�g�E�^��
  InitDtSave
End Select
End Sub

Private Sub Command2_Click(Index As Integer)
'
  'FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
  '
  Select Case Index
  Case 0    '�^�󓞒B
    gVumFlg = 1                       '�^�󓞒B=1
  Case 1    '�����J�n
    If lTrnsFLg = True Then
      lTrnsFLg = False                  '�������t���O
      Command2(1).Caption = "�����J�n"
    Else
      Command2(1).Caption = "�������~"
      TrnsMax = Val(Text1(0).Text)      '������
      lTrnsFLg = True                   '�������t���O
      PltPrns TrnsMax
    End If
  Case 3  '�ǂݏo��
    FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
    NextView = 6                           '
    'coxFlLoad
    'Label2(2) = gcoxFlName
    'cfileSave
  Case 4  '������
    FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
    NextView = 7                           '
    MemoFlg = True      '������
    'ExecMemo gcoxFldir, gcoxFlName
  Case 5  'edit
    FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
    NextView = 8                           '
    'Unload Me
    'MYEdit.Show 1
  Case 6  '�I��
    FrmMenuFlg = False                    '���j���[���甲����Ƃ�false
    InitDtSave
    BoardClose
    End
  End Select
End Sub

Private Sub SetData()

  'Label2(2) = gcoxFlName             '����t�@�C����
  
End Sub

Private Sub Form_Load()
  DispCenter Me
  versionNo = Label1(13)            '�@VersionNo�@�\���p
  PGM_Menu.Caption = PGM_Menu.Caption + "     " + versionNo
  ViewFlg = 1                       '��ʔԍ�
  FrmMenuFlg = True                   '���j���[���甲����Ƃ�false
  Timer1.Enabled = False
  Me.Show
  Label2(5).Caption = ""            '���_�\��
  SetData
  SetVScroll1
  DispText1 2, True       'kaisuu set
  T_keisuCont(2) = 0                ' T�W���@�߲�����backup���
  T_keisuCont(3) = 0                ' �^����backup�̸��
   Timer1.Enabled = True
  Command1(0).Enabled = False       '2002.10.17 KYOCERA
  Command1(2).Enabled = False
End Sub
'-------------------------------------------------------------
'Private Sub ExecMemo(DDir$, flNm$)      ' 2006.5.19 PGM_KTD �ֈړ�
'Dim ExecFl$, fl$
'Dim r!
'  fl = DDir$ & flNm
'  ExecFl = "C:\WINDOWS\NOTEPAD.EXE " & fl
''-------- ��������fl���J��
'  r = Shell(ExecFl, 1)
'  AppActivate r, True     '������������܂ő҂�
'End Sub

Private Sub genten()
Dim hspd As Long
'--------------
  Label2(4).Caption = "���_���A��"
  Label2(5).Caption = ""
  C870Genten
'/* �J�E���^�Ƀ[������������ */
  Ready_Wait
  C870CntPreSet 0   '�b�n�t�m�s�d�q �o�q�d�r�d�s �b�n�l�l�`�m�c
'/* �蓮�p�@���x�֖߂� */
  hspd = gHiSpeed * gRev2Disp / 60              '03.9.12�ύX
  C870HSPDSet hspd                              '03.9.12�ύX
  
'  C870HSPDSet 36256    '/* 36256 pps  3mm/sec �@���@03.9.12�ύX
  Label2(4).Caption = ""
  gOrgFlg = True                       '���_���A����=TRUE
  OrgON                 '2002.10.16 KYOCERA
  gOrgStartFlg = True   '2002.10.17 KYOCERA
End Sub

Private Sub prcom(buf$, im%)
Dim nm$, comm$, fp$
Dim j%, fnum%
Dim dr$, fl$
  dr = App.path & "\..\cont\"
  fl = "prcom.dat"
  If im = 1 Then
    comm = "0"
    fnum = FreeFile
    Open dr & fl For Input As #fnum
      Line Input #fnum, comm
      Line Input #fnum, comm
    Close #fnum
  Else
    fnum = FreeFile
    Open dr & fl For Output As #fnum
      Write #fnum, comm
      Write #fnum, comm
    Close #fnum
  End If
End Sub

Private Sub ginit()
'/* �^�C�g���̕\���@*/
End Sub

Private Sub disp_t(ttime$)
  Label2(3).Caption = ttime
End Sub

Private Sub cal_pid(m_sa!, m_p!, m_lim!)
'  float  m_sa,     /* �ݒ舳�� */
'         m_p,      /* �ݒ�o�l */
'         m_lim;    /* �ݒ胊�~�b�g�l */
Dim i%, nout1%
Dim pa!, per!
Dim ch%, v!
  pa = r_pres()     '/* ���� */

  If pa > m_sa + 200# Then '/* �w�舳�́{�Q�O�O�j���ȏ�Ŕ���~ */
    hijyou
    Exit Sub
  End If

'/* �o�h�c���Z */

  per = 5 * (m_sa - pa) * Abs(m_sa - pa) / (m_p * m_p)
  If per > m_lim Then per = m_lim
  If per < (-1 * m_lim) Then per = -1 * m_lim
  nout1 = &H800 - Int(4.095 * per / 4#)
  'nout1 = Int(-40.95 * per) + &H800
  ch = 1
  'DaOut1 ch, nout1
  '
  v = per / 5
  'v = per / 5
  Label2(7).Caption = Format(v, "0.00")
  ch = 1
  DaVoltOut ch, v

End Sub

Private Sub qd62_Main()
Dim c$, mc0$, mc1$
Dim cname$, DName$, ttime$, chaz$, chap$, stime$
Dim i%, j%, imo%, ic%, c0%, ndata%
Dim ie02%, ie03%, ie04%
Dim ie%, ie0%, ie1%, ie2%, ie3%, ie4%, ie5%
Dim z!, apre!
Dim roz(0 To 2)                          '�˓����`���Ұ��@���A����
Dim fp$
'
Dim ch%, nTime!, g_sts%
Dim hspd As Long
Dim lspd As Long
Dim FlgAuto%
'Dim sdt1$, sdt2$, sdt3$          '  2004.3.30  �ǉ�  s.f  2006.4.14 global ��
'
  cname = "cont\\          "
  DName = "data\\          "
  ie02 = 0: ie03 = 0: ie04 = 0
  ie = 0: ie0 = 0: ie1 = 0: ie2 = 0: ie3 = 0: ie4 = 0: ie5 = 0
  z = 0: apre = 0
'/* �`�s�b���x���Z�b�g */
  ch = 2
  DaVoltOut ch, 0   '�퉷�ݒ�
  ch = 3
  DaVoltOut ch, 0   '�퉷�ݒ�
'/* �R���g���[���t�@�C�����̓ǂݏo�� */
  cfileLoad
  Label2(2).Caption = gcoxFlName
'/* ���{�b�g�f�[�^�̃����{�[�h�ւ̓]�� */
  rozFileLoad
'/***********     �گ��@C-853�{�[�h�����ݒ�@�@�@*************/
  'DioAllReset
  C870SpecInit    '/* SPEC INITIALIZE CMD OUT */
  C870CntInit     '/* �J�E���^�{�[�h�̏����ݒ� */
  C870AccRate     '/* ������ڰľ�ĺ���� */
  C870DelayTime   '/* �f�B���[�^�C���ݒ� */
  ServoON         '/* �T�[�{���� */
  '--------------- ���x�̐ݒ�
  hspd = gHiSpeed * gRev2Disp / 60
  C870HSPDSet hspd
  lspd = gLwSpeed * gRev2Disp / 60
  C870LSPDSet lspd
  rstcm1                      '  C870 compare register reset
'/***********     �گ��@C-853�{�[�h�����ݒ�@�I��  *************/
OrgExec:
  TrnsReqON         '�����˗��M���n�m
'/* ���Z�b�g�X�C�b�`���͑҂� */
'    Label2(4).Caption = "�ُ탊�Z�b�g�M���҂�"
'    While SystemReadyChk() = 0
      'FrmEmg.Show
'      DoEvents
'    Wend
'/* �T�[�{���[�^�̌��_�o�� */
  CtlDisp
'  genten
'  Ready_Wait
  OrgFlg = False       '���_�o��
  OrgOFF               '----------- ���_LED          2002.10.16 KYOCERA
'/* �O���t�B�b�N��ʂ̏����� */
'/* �t�@���N�V�����R�[�h�\�� */
'/* ���j���[�̕\���@*/
'/* ���j���[�̑I���@*/
  ic = 2: c0 = 0: mc1 = 0: imo = 0

  Do
    If FrmMenuFlg = False Then
      Exit Do        '���j���[���甲����Ƃ�false
    End If
    If OrgFlg = True Then Exit Do             '���_�o��
    If SystemReadyChk() = 0 Then Exit Do      '�V�X�e�����f�B��off�Ȃ�V�X�e�����f�B�҂�
    '
    If ArmChk <> 0 Then               '�A���[�����b�Z�[�W
      frmerr_sign.Show 1
    End If
'/* �}�j�R�����͏��� */
  z = r_z()
  If imo = 3 Then cal_pid gM_sa, gM_p, gM_lim
' FlgAuto = AutoChk()        '������������H (<>0 ����)
  FlgAuto = 0                '�����I�Ɏ������ �ɂ���@����=0
  If FlgAuto = 0 Then          '------- �����̎�SW-BOX2�͖���
    ch = 1: mc0 = BitRd(ch) And &HF     'mc0=inp(DIO_P+1);
  Else
    mc0 = 0
  End If
  '
  If (mc0 And &H6) = &H6 And z > pv_ch And imo <> 3 Then
      C870SlowStop    'outp(AX_COM,0xfe); /* ��~ */
      CtlVelo         'outp(DIO_P+3,0x05);/* ���xӰ�� */
      imo = 3
      mc1 = mc0
   End If
'
  If mc0 <> mc1 Then
      mc1 = mc0
      Select Case mc0
      Case &H6                        '������ɓ���
        g_sts = GentenCmdChk          '�����V�����_�̌��_���m�F
        If g_sts = 1 Then
          'di_d2 = di_d2 & &HBF          '/* ���_LED�@OFF */
          gOrgFlg = False                '���_���A����=TRUE
          OrgOFF    'ch = 1: outp ch, di_d2        'outp(DIO_P+1,di_d2);
          Ready_Wait                    'while((inp(AX_STS)&1)!=0);
          C870Command &H12              'outp(AX_COM,0x12);
          imo = 1
        End If
      Case &H5                         '�������ɓ���
        gOrgFlg = False                '���_���A����=TRUE
        OrgOFF   'ch = 1: outp ch, di_d2        'outp(DIO_P+1,di_d2);
        Ready_Wait                    'while((inp(AX_STS)&1)!=0);
        C870Command &H13              'outp(AX_COM,0x13);
        imo = 1
      Case &HC
        pv_ch = r_z()
        rozFileSave
      Case Else     'default:
        If imo = 3 Then
          imo = 0
          CtlDisp                   ' /* �ʒuӰ�� */
          ch = 1: DaVoltOut ch, 0   '���x�w�ߓd���O
        End If
        If imo = 1 Then
          imo = 0
          C870SlowStop              ' /* ��~ */
        End If
      End Select
    End If
'/* ���v�@���́@�y�l �̕\�� */
    ttime = Time$       '_strtime(ttime);

  If Mid(ttime, 7, 1) <> stime Then

      '/* ���x���[�� */
    ch = 1: DaVoltOut ch, 0
  '/* �P�b�ɂP�񎞌v�\�� */
    If Int(nTime) <> Int(Timer) Then
      nTime = Timer
      Label2(3).Caption = ttime   'disp_t(ttime);
      'txtcolor(3);

  '/* �y�ʒu�\�� */
      Label2(0).Caption = Format(z, "0.000")
  '/* ���͕\�� */
      apre = r_pres()   '/* ���͓ǂݎ�� */
      Label2(1).Caption = Format(apre, "0.000")
    End If
  '
  '�V���b�g���s
    Label2(6).Caption = Format(InitDat(11), "0")
  '
  If gOrgStartFlg = False Then  '2002.10.18 KYOCERA
    If gOrgFlg = True Then '���_���A����=TRUE
      Label2(5).Caption = "���_"
    Else
      Label2(5).Caption = ""
    End If
  End If
    '-------------- �s���j�v�ǂ�
    LS21S_Monitor
  End If
  '-------------- �s���j�v�ǂ�
  '    LS21S_Monitor
  '/* �G���[�\�� */
  '------------------ BITS ��ǂ�
  '2002.01.15�폜��ArmChk��EmgChk�ɕύX
'/* �L�[�{�[�h���� */
     DoEvents
  Loop
  '
  'TrnsReqOFF    '�����˗��M���n�e�e
  
  If MemoFlg = True Then             'FKey�������̏���
    MemoFlg = False
    FrmMenuFlg = True
    ExecMemo gcoxFldir, gcoxFlName
    GoTo OrgExec:
  End If

  If OrgFlg = True Then              '���_�o��
    genten
    GoTo OrgExec:
  End If
  If SystemReadyChk() = 0 Then       '�V�X�e�����f�B��off�Ȃ�V�X�e�����f�B�҂�
    RecEmgDtSave sdt3, sdt1, sdt2    '����~���b�Z�[�W�̕ۑ�  2004.3.8
    FrmMenuFlg = False
    Unload Me
    ReadyFrm.Show
  End If
  If ArmChk <> 0 Then               '�A���[�����b�Z�[�W
    frmerr_sign.Show 1
  End If
  '---------------------------- ��ʂ��ς��Ǝ��̏���
  If FrmMenuFlg = False Then            '���j���[���甲����Ƃ�false
    FrmMenuFlg = True                   '���j���[���甲����Ƃ�false
    Select Case NextView
    Case 1  '���`�i�I�����[�j
      Unload Me
      LS21_TC.Show
    Case 2  '�A�����`���  ���`�i�V���O���j
      Unload Me
      LS21_SC.Show
    Case 3  '�f�[�^�o��
      Unload Me
      LS21_ResGph.Show
    Case 4  'I O �`�F�b�N
      Unload Me
      IOChk.Show
    Case 5  '�X�P�[���ύX
      Unload Me
      LS21_GphScale.Show
    Case 6  '�ǂݏo��
      coxFlLoad
      Label2(2) = gcoxFlName
      cfileSave
      GoTo OrgExec:
    Case 7  '������
      ExecMemo gcoxFldir, gcoxFlName
      GoTo OrgExec:
    Case 8  'edit
      Unload Me
      MYEdit.Show
    End Select
  End If
End Sub


Private Sub Timer1_Timer()
  Timer1.Enabled = False
  qd62_Main
End Sub

Private Sub PltPrns(n%)
Dim i%, sts%, stsEmg%
'--------- �p���b�g�z��
  Timer1.Enabled = False
  i = n
  'Text1(0).Text = Format(TrnsMax - (n - i), "0")
  For i = 1 To n
    '
    PCTrnsReq     ' �p���b�g1���w��
    Text1(0).Text = Format(i, "0")
    WaitSec 1
    sts = 0
    Do
      sts = PCTrnsChk()   'PC���������=1
      stsEmg = SystemReadyChk()  '����~
      If sts = 0 Or stsEmg = 0 Or lTrnsFLg = False Then Exit Do
      DoEvents
    Loop
    '
    If stsEmg = 0 Or lTrnsFLg = False Then Exit For
  
  Next i
  Text1(0).Text = Format(n, "0")
  lTrnsFLg = False                  '�������t���O
  Command2(1).Caption = "�����J�n"
  Timer1.Enabled = True
End Sub
'2002.10.17 KYOCERA
Private Sub Timer2_Timer()
  
  If gOrgStartFlg = True Then
    If r_z > 0.1 Then
      OrgOFF
      Label2(5).Caption = ""
      Command1(0).Enabled = False
      Command1(2).Enabled = False
    Else
      OrgON
      Label2(5).Caption = "���_"
      Command1(0).Enabled = True
      Command1(2).Enabled = True
    End If
  End If
      
End Sub

Private Sub DispText1(dt!, flg%)   '  ��
  If flg = False Then
    VScroll1.Visible = False
    Text1(0).Visible = False
  Else
    VScroll1.Visible = True
    VScroll1.Value = dt * lK1
    Text1(0).Visible = True
    Text1(0).Text = Format(dt, "###")
  End If
End Sub
Private Sub SetVScroll1()               ' VSScroll�̗ʂ�����
    lK1 = 1
    VScroll1.min = 50 * lK1
    VScroll1.max = 0 * lK1
    VScroll1.LargeChange = 1 * lK1
    VScroll1.SmallChange = 1 * lK1
End Sub
Private Sub VScroll1_Change()
Dim dt!
  dt = VScroll1.Value / lK1
  DispText1 dt, True       '��
End Sub

