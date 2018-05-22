VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form formEditorDelete 
   Caption         =   "Edit or Delete Product Details"
   ClientHeight    =   8040
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10110
   LinkTopic       =   "Form2"
   ScaleHeight     =   8040
   ScaleWidth      =   10110
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   495
      Left            =   3000
      Top             =   6840
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
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
      RecordSource    =   "select * from product"
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
   Begin VB.CommandButton cmdDelete 
      BackColor       =   &H0080FFFF&
      Caption         =   "Delete"
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
      Left            =   5160
      Picture         =   "formEditorDelete.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   5640
      Width           =   1440
   End
   Begin VB.TextBox Text1 
      DataField       =   "PRODUCTID"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3360
      TabIndex        =   0
      Top             =   1440
      Width           =   3735
   End
   Begin VB.TextBox Text2 
      DataField       =   "PRODUCTNAME"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3360
      TabIndex        =   1
      Top             =   2280
      Width           =   3735
   End
   Begin VB.TextBox Text3 
      DataField       =   "QUANTITY"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3360
      TabIndex        =   2
      Top             =   3120
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
      Left            =   3360
      TabIndex        =   3
      Text            =   "Enter in DD-MMM-YYYY"
      ToolTipText     =   "DD-MMM-YYYY"
      Top             =   3960
      Width           =   3735
   End
   Begin VB.CommandButton cmdSave 
      BackColor       =   &H0080FFFF&
      Caption         =   "Save"
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
      Left            =   3480
      Picture         =   "formEditorDelete.frx":0442
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   5640
      Width           =   1440
   End
   Begin VB.TextBox Text5 
      DataField       =   "PRICE"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   3360
      TabIndex        =   4
      Top             =   4800
      Width           =   3735
   End
   Begin VB.CommandButton cmdSearch 
      BackColor       =   &H0080FFFF&
      Caption         =   "Search"
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
      Left            =   1800
      Picture         =   "formEditorDelete.frx":074C
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   5640
      Width           =   1441
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
      Left            =   6840
      Picture         =   "formEditorDelete.frx":1016
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   5640
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
      Left            =   4320
      Picture         =   "formEditorDelete.frx":18E0
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   6720
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
      Left            =   1680
      TabIndex        =   15
      Top             =   1440
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
      Left            =   1920
      TabIndex        =   14
      Top             =   3120
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
      Left            =   1320
      TabIndex        =   13
      Top             =   2280
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
      Left            =   2280
      TabIndex        =   12
      Top             =   3960
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
      Left            =   2160
      TabIndex        =   11
      Top             =   4800
      Width           =   855
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackColor       =   &H00C0FFC0&
      Caption         =   "EDIT OR DELETE PRODUCT DETAILS"
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
      Left            =   1680
      TabIndex        =   10
      Top             =   480
      Width           =   6615
   End
End
Attribute VB_Name = "formEditorDelete"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Datevalue As String
Dim pName As String
Dim pID As String
Dim pq As String
Dim p As String

Private Sub Adodc1_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
If pRecordset.EOF Or pRecordset.BOF Then
    MsgBox "End of search results."
End If
End Sub

Private Sub cmdDelete_Click()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
con.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
Adodc1.Recordset.Delete
con.Close
MsgBox "Product deleted from inventory!"
End Sub

Private Sub cmdSearch_Click()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
con.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
Dim sql As String
sql = ""
If Text1.Text <> "" Then
    If InStr(1, sql, "SELECT") = 0 Then
        sql = "SELECT * FROM product"
    End If
    If InStr(1, sql, "WHERE") > 0 Then
        sql = sql & " AND productID=" & Text1.Text & ""
    Else
        sql = sql & " WHERE productID=" & Text1.Text & ""
    End If
End If
If Text2.Text <> "" Then
    If InStr(1, sql, "SELECT") = 0 Then
        sql = "SELECT * FROM product"
    End If
    If InStr(1, sql, "WHERE") > 0 Then
        sql = sql & " AND productName LIKE '" & Text2.Text & "%' "
    Else
        sql = sql & " WHERE productName LIKE '" & Text2.Text & "%' "
    End If
End If
If Text3.Text <> "" Then
    If InStr(1, sql, "SELECT") = 0 Then
        sql = "SELECT * FROM product"
    End If
    If InStr(1, sql, "WHERE") > 0 Then
        sql = sql & " AND quantity=" & Text3.Text & ""
    Else
        sql = sql & " WHERE quantity=" & Text3.Text & ""
    End If
End If
If Text4.Text <> "" Then
    If InStr(1, sql, "SELECT") = 0 Then
        sql = "SELECT * FROM product"
    End If
    If InStr(1, sql, "WHERE") > 0 Then
        sql = sql & " AND MFD='" & Text4.Text & "' "
    Else
        sql = sql & " WHERE MFD='" & Text4.Text & "' "
    End If
End If
If Text5.Text <> "" Then
    If InStr(1, sql, "SELECT") = 0 Then
        sql = "SELECT * FROM product"
    End If
    If InStr(1, sql, "WHERE") > 0 Then
        sql = sql & " AND price=" & Text5.Text & ""
    Else
        sql = sql & " WHERE price=" & Text5.Text & ""
    End If
End If
If sql = "" Then
    MsgBox "Enter product details to search for!"
Else
    Adodc1.RecordSource = sql
    Adodc1.Refresh
    pID = Text1.Text
    pName = Text2.Text
    pq = Text3.Text
    Datevalue = Format(Text4.Text, "d-mmm-yy")
    p = Text5.Text
    If Text1.Text = "" Then
        Adodc1.RecordSource = "SELECT * FROM product"
        Adodc1.Refresh
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Text4.Text = ""
        Text5.Text = ""
        MsgBox "Product not found!"
    End If
End If
con.Close
End Sub

Private Sub cmdReturn_Click()
Unload Me
End Sub

Private Sub cmdRefresh_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
End Sub

Private Sub cmdSave_Click()
Dim cn As ADODB.Connection
Dim sql As String
Adodc1.Recordset.Delete
Set cn = New ADODB.Connection
cn.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
Text1.Text = pID
Text2.Text = pName
Text3.Text = pq
Datevalue = Format(Datevalue, "d-mmm-yy")
Text4.Text = Datevalue
Text5.Text = p
sql = "INSERT INTO product VALUES(" & pID & ",'" & pName & "'," & pq & ",'" & Datevalue & "'," & p & ")"
Adodc1.RecordSource = sql
cn.Execute Adodc1.RecordSource
MsgBox "Product details updated!"
cn.Close
End Sub

Private Sub Form_Load()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
con.Open ("Provider=MSDAORA.1;Password=tiger;User ID=nitheesh;Data Source=oracle;Persist Security Info=True")
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
End Sub

Private Sub Text1_Change()
pID = Text1.Text
End Sub

Private Sub Text2_Change()
pName = Text2.Text
End Sub

Private Sub Text3_Change()
pq = Text3.Text
End Sub

Private Sub Text4_Change()
Datevalue = Format(Text4.Text, "d-mmm-yy")
End Sub

Private Sub Text5_Change()
p = Text5.Text
End Sub
