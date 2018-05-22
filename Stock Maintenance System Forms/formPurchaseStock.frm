VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form formPurchaseStock 
   Caption         =   "Place an Order"
   ClientHeight    =   7965
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9630
   LinkTopic       =   "Form1"
   ScaleHeight     =   7965
   ScaleWidth      =   9630
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   3000
      Top             =   6120
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
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
      RecordSource    =   "select * from product where quantity < 20"
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
      Left            =   4320
      Picture         =   "formPurchaseStock.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   6000
      Width           =   1800
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
      Left            =   5640
      Picture         =   "formPurchaseStock.frx":057C
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   4920
      Width           =   1545
   End
   Begin VB.CommandButton cmdOrder 
      BackColor       =   &H0080FFFF&
      Caption         =   "Place Order"
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
      Left            =   2880
      Picture         =   "formPurchaseStock.frx":0E46
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   4920
      Width           =   1560
   End
   Begin VB.TextBox Text4 
      BeginProperty DataFormat 
         Type            =   0
         Format          =   "dd-mmm-yy"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   3
      Top             =   3960
      Width           =   3735
   End
   Begin VB.TextBox Text3 
      DataField       =   "quantity"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3120
      TabIndex        =   2
      Top             =   3120
      Width           =   3735
   End
   Begin VB.TextBox Text2 
      DataField       =   "productName"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3120
      TabIndex        =   1
      Top             =   2280
      Width           =   3735
   End
   Begin VB.TextBox Text1 
      DataField       =   "productID"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3120
      TabIndex        =   0
      Top             =   1440
      Width           =   3735
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackColor       =   &H00C0FFC0&
      Caption         =   "AUTOMATIC PRODUCT ORDER PLACEMENT"
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
      Left            =   1440
      TabIndex        =   11
      Top             =   480
      Width           =   6615
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      Caption         =   "Quantity to be ordered : "
      BeginProperty Font 
         Name            =   "Cambria"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1200
      TabIndex        =   10
      Top             =   3840
      Width           =   1575
      WordWrap        =   -1  'True
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
      Top             =   2280
      Width           =   1695
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
      TabIndex        =   8
      Top             =   3120
      Width           =   1095
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
      TabIndex        =   7
      Top             =   1440
      Width           =   1335
   End
End
Attribute VB_Name = "formPurchaseStock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim threshold As Integer

Private Sub Adodc1_EndOfRecordset(fMoreData As Boolean, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    MsgBox "All products have sufficient stock!"
    Text4.Text = ""
End Sub

Private Sub cmdOrder_Click()
Adodc1.Enabled = True
Dim cn As ADODB.Connection
Dim sql As String
Dim item As Integer
item = Text3.Text
item = item + Text4.Text
If item < threshold Then
    End
End If
sql = "UPDATE product SET quantity = " & item & " WHERE productID=" & Text1.Text & ""
Adodc1.RecordSource = sql
Set cn = New ADODB.Connection
cn.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
cn.Execute Adodc1.RecordSource
MsgBox "Order Placed! Product stock will be updated soon!"
cn.Close
End Sub

Private Sub Form_Load()
threshold = 20
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
con.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
If Not Adodc1.Recordset.EOF Then
    Text4.Text = threshold + 1 - Text3.Text
End If
Adodc1.Enabled = False
con.Close
End Sub

Private Sub cmdReturn_Click()
Unload Me
End Sub

Private Sub cmdRefresh_Click()
Dim sql As String
sql = "SELECT * FROM product WHERE quantity < 20"
Adodc1.RecordSource = sql
Adodc1.Refresh
If Not Adodc1.Recordset.EOF Then
    Text4.Text = threshold + 1 - Text3.Text
End If
Adodc1.Enabled = False
End Sub

Private Sub Text4_Change()
Dim diff As Integer
If Text3.Text = "" Then
    Text3.Text = 0
End If
diff = threshold + 1 - Text3.Text
If Text4.Text <> "" Then
    If diff > Text4.Text Then
        MsgBox "Enter quantity greater than " & diff - 1 & " ."
    End If
End If
End Sub
