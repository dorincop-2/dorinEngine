VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  '���� ����
   Caption         =   "�ٳ��� ��ġ ���α׷�"
   ClientHeight    =   5640
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   7440
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmMain.frx":0442
   ScaleHeight     =   5640
   ScaleWidth      =   7440
   StartUpPosition =   2  'ȭ�� ���
   Begin VB.ComboBox txtSkin 
      Height          =   300
      Left            =   1920
      Style           =   2  '��Ӵٿ� ���
      TabIndex        =   12
      Top             =   2520
      Width           =   4335
   End
   Begin VB.DirListBox dir 
      Height          =   300
      Left            =   6120
      TabIndex        =   11
      Top             =   4920
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.TextBox txtSecret 
      Height          =   270
      IMEMode         =   3  '��� ����
      Left            =   1920
      PasswordChar    =   "*"
      TabIndex        =   6
      Top             =   2040
      Width           =   4335
   End
   Begin VB.TextBox txtPort 
      Height          =   270
      Left            =   1920
      TabIndex        =   4
      Text            =   "80"
      Top             =   1560
      Width           =   4335
   End
   Begin VB.TextBox txtHost 
      Height          =   270
      Left            =   1920
      TabIndex        =   2
      Text            =   "127.0.0.1"
      Top             =   1080
      Width           =   4335
   End
   Begin VB.CommandButton cmdInstall 
      Caption         =   "�� �� !"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   0
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label Label7 
      BackStyle       =   0  '����
      Caption         =   "�� ��   �� Ų :"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   10
      Top             =   2520
      Width           =   1455
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '����
      Caption         =   $"frmMain.frx":397E
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   600
      TabIndex        =   9
      Top             =   3960
      Width           =   6255
   End
   Begin VB.Label Label5 
      BackStyle       =   0  '����
      Caption         =   $"frmMain.frx":3A58
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   8
      Top             =   3360
      Width           =   6255
   End
   Begin VB.Label Label4 
      Alignment       =   2  '��� ����
      BackStyle       =   0  '����
      Caption         =   "�� ��   �� ġ ��   �� �� �� �� �� .   �� �� ��    �� Ȯ ��    �� �� �� �� �� �� ~ ^^"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   7
      Top             =   360
      Width           =   6855
   End
   Begin VB.Label Label3 
      BackStyle       =   0  '����
      Caption         =   "�� ��   ���  Ű :"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   5
      Top             =   2040
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  '����
      Caption         =   "�� Ʈ :"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   3
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackStyle       =   0  '����
      Caption         =   "ȣ �� Ʈ  �� �� :"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   1080
      Width           =   1455
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iscomplete As Boolean

'https://www.vbforums.com/showthread.php?73289-Get-last-folder-name-in-a-path
Function GetLastDirName(strpath As String) As String
    Dim i, j
    strpath = IIf(Right(strpath, 1) = "\", Left(strpath, Len(strpath) - 1), strpath)
    i = InStr(1, strpath, "\")
    j = InStr(i + 1, strpath, "\")
    While (j <> 0)
        i = InStr(i + 1, strpath, "\")
        j = InStr(i + 1, strpath, "\")
    Wend
    GetLastDirName = Mid(strpath, i, Len(strpath) - i + 1)
    GetLastDirName = Right(GetLastDirName, Len(GetLastDirName) - 1)
End Function

Private Sub cmdInstall_Click()
    If txtHost.Text = "" Or txtPort.Text = "" Or txtSecret.Text = "" Or txtSkin.Text = "" Then
        MsgBox "��� ĭ���� ä���ּ���~", 16, "����"
        Exit Sub
    End If

    iscomplete = True
    
    'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
    Dim iFileNo As Integer
    iFileNo = FreeFile
    Open "config.json" For Output As #iFileNo
    Print #iFileNo, "{"
    Print #iFileNo, "    " & ChrW$(34) & "host" & ChrW$(34) & ": " & ChrW$(34) & txtHost.Text & ChrW$(34) & ", "
    Print #iFileNo, "    " & ChrW$(34) & "port" & ChrW$(34) & ": " & ChrW$(34) & txtPort.Text & ChrW$(34) & ", "
    Print #iFileNo, "    " & ChrW$(34) & "initialized" & ChrW$(34) & ": false, "
    Print #iFileNo, "    " & ChrW$(34) & "skin" & ChrW$(34) & ": " & ChrW$(34) & txtSkin.Text & ChrW$(34) & ", "
    Print #iFileNo, "    " & ChrW$(34) & "secret" & ChrW$(34) & ": " & ChrW$(34) & txtSecret.Text & ChrW$(34)
    Print #iFileNo, "}"
    Close #iFileNo
    
    Shell "cmd /c start node server.js"
    
    End
End Sub

Private Sub Form_Load()
    iscomplete = False
    
    Dim i As Integer
    dir.Path = dir.Path & "\skins"
    
    For i = 0 To dir.ListCount - 1
        txtSkin.AddItem GetLastDirName(dir.List(i))
    Next i
    
    txtSkin.ListIndex = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If MsgBox("��ġ�� ����Ͻðڽ��ϱ�? --; ���� Ű�� ��й�ȣ�� ���� ��ġ�� ������ ó���� ������ ��ٸ��ð� 127.0.0.1�� �����ϸ� ����� ��Ű�� ��������ϴ� ^^", vbOKCancel + vbExclamation, "Ȯ��") = vbOK Then
        End
    Else
        Cancel = 1
    End If
End Sub

