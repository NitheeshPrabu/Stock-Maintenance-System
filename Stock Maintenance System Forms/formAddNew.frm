VERSION 5.00
Begin VB.Form formAddNew 
   Caption         =   "Add New Product"
   ClientHeight    =   8325
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9510
   LinkTopic       =   "Form1"
   ScaleHeight     =   8325
   ScaleWidth      =   9510
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      DataField       =   "productID"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3480
      TabIndex        =   0
      Top             =   1680
      Width           =   3735
   End
   Begin VB.TextBox Text2 
      DataField       =   "productName"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   2520
      Width           =   3735
   End
   Begin VB.TextBox Text3 
      DataField       =   "quantity"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3480
      TabIndex        =   2
      Top             =   3360
      Width           =   3735
   End
   Begin VB.TextBox Text4 
      DataField       =   "MFD"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3480
      TabIndex        =   3
      Text            =   "Enter in DD-MMM-YYYY"
      ToolTipText     =   "DD-MMM-YYYY"
      Top             =   4200
      Width           =   3735
   End
   Begin VB.TextBox Text5 
      DataField       =   "price"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3480
      TabIndex        =   4
      Top             =   5040
      Width           =   3735
   End
   Begin VB.CommandButton cmdRefresh 
      BackColor       =   &H0080FFFF&
      Caption         =   "Refresh"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   900
      Left            =   5760
      Picture         =   "formAddNew.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   5880
      Width           =   1441
   End
   Begin VB.CommandButton cmdReturn 
      BackColor       =   &H0080FFFF&
      Caption         =   "&Return"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   960
      Left            =   3840
      Picture         =   "formAddNew.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   6960
      Width           =   1800
   End
   Begin VB.CommandButton cmdOk 
      BackColor       =   &H0080FFFF&
      Caption         =   "Ok"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   900
      Left            =   2280
      Picture         =   "formAddNew.frx":0E46
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   5880
      Width           =   1441
   End
   Begin VB.Label Label1 
      Caption         =   "Product ID :"
      BeginProperty Font 
         Name            =   "Cambria"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   13
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Quantity :"
      BeginProperty Font 
         Name            =   "Cambria"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      TabIndex        =   12
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "Product Name : "
      BeginProperty Font 
         Name            =   "Cambria"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   11
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Label Label4 
      Caption         =   "MFD : "
      BeginProperty Font 
         Name            =   "Cambria"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2400
      TabIndex        =   10
      Top             =   4200
      Width           =   855
   End
   Begin VB.Label Label6 
      Caption         =   "Price : "
      BeginProperty Font 
         Name            =   "Cambria"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2280
      TabIndex        =   9
      Top             =   5040
      Width           =   855
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackColor       =   &H00C0FFC0&
      Caption         =   "NEW PRODUCT DETAILS"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000040&
      Height          =   495
      Left            =   1200
      TabIndex        =   8
      Top             =   600
      Width           =   6615
   End
End
Attribute VB_Name = "formAddNew"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
con.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
rs.Open "INSERT INTO product VALUES(" & Text1.Text & ",'" & Text2.Text & "'," & Text3.Text & ",'" & Text4.Text & "'," & Text5.Text & ")", con, adOpenDynamic, adLockBatchOptimistic
con.Close
MsgBox "Product added to inventory!"
End Sub

Private Sub cmdRefresh_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
End Sub

Private Sub cmdReturn_Click()
Unload Me
End Sub

