VERSION 5.00
Begin VB.Form formLogin 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Login"
   ClientHeight    =   1545
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   3750
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   912.837
   ScaleMode       =   0  'User
   ScaleWidth      =   3521.047
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtUserName 
      Height          =   345
      Left            =   1290
      TabIndex        =   1
      Top             =   135
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   390
      Left            =   495
      TabIndex        =   4
      Top             =   1020
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   390
      Left            =   2100
      TabIndex        =   5
      Top             =   1020
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   1290
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   525
      Width           =   2325
   End
   Begin VB.Label lblLabels 
      Caption         =   "&User Name:"
      Height          =   270
      Index           =   0
      Left            =   105
      TabIndex        =   0
      Top             =   150
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "&Password:"
      Height          =   270
      Index           =   1
      Left            =   105
      TabIndex        =   2
      Top             =   540
      Width           =   1080
   End
End
Attribute VB_Name = "formLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    LoginSucceeded = False
    Me.Hide
End Sub

Private Sub cmdOK_Click()
Dim con As ADODB.Connection
Set con = New ADODB.Connection
Dim rs As ADODB.Recordset
Set rs = New ADODB.Recordset
con.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
Dim sql As String
sql = "SELECT * FROM manager WHERE username LIKE '" & txtUserName & "' AND password LIKE '" & txtPassword & "' "
rs.Open sql, con
If Not rs.EOF Then
    formMain.Show
    Unload Me
Else
    MsgBox "Invalid Username/Password, try again!", , "Login"
    txtPassword = ""
    txtUserName.SetFocus
End If
End Sub

Private Sub txtUsername_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
    Case 32 To 64, 91 To 96, 123 To 126
        MsgBox "Username can only contain letters!"
        KeyAscii = 0
        Exit Sub
End Select
End Sub

Private Sub txtPassword_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
    Case 32 To 64, 91 To 96, 123 To 126
        MsgBox "Password can only contain letters!"
        KeyAscii = 0
        Exit Sub
End Select
End Sub
