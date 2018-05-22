VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form formDisplay 
   Caption         =   "Student Details"
   ClientHeight    =   7410
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8700
   LinkTopic       =   "Form1"
   ScaleHeight     =   7410
   ScaleWidth      =   8700
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   615
      Left            =   3360
      Top             =   5160
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   1085
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True"
      OLEDBString     =   "Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "product"
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      DataField       =   "PRODUCTID"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   1080
      Width           =   3735
   End
   Begin VB.TextBox Text2 
      DataField       =   "PRODUCTNAME"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   1920
      Width           =   3735
   End
   Begin VB.TextBox Text3 
      DataField       =   "QUANTITY"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   2760
      Width           =   3735
   End
   Begin VB.TextBox Text4 
      DataField       =   "MFD"
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "dd-mmm-yy"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   3
      EndProperty
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   3600
      Width           =   3735
   End
   Begin VB.TextBox Text5 
      DataField       =   "PRICE"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   4440
      Width           =   3735
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
      Left            =   3480
      Picture         =   "formDisplay.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   6120
      Width           =   1800
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
      Left            =   1440
      TabIndex        =   11
      Top             =   1080
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
      Left            =   1680
      TabIndex        =   10
      Top             =   2760
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
      Left            =   1080
      TabIndex        =   9
      Top             =   1920
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
      Left            =   2040
      TabIndex        =   8
      Top             =   3600
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
      Left            =   1920
      TabIndex        =   7
      Top             =   4440
      Width           =   855
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackColor       =   &H00C0FFC0&
      Caption         =   "PRODUCT DETAILS"
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
      Left            =   840
      TabIndex        =   6
      Top             =   360
      Width           =   6615
   End
End
Attribute VB_Name = "formDisplay"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Adodc1_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
If pRecordset.BOF Or pRecordset.EOF Then
    MsgBox "End of inventory."
End If
End Sub

Private Sub cmdReturn_Click()
Unload Me
End Sub

Private Sub Form_Load()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
con.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
End Sub

