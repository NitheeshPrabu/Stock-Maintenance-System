VERSION 5.00
Begin VB.Form formUpdate 
   Caption         =   "Update Product Details"
   ClientHeight    =   5745
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9330
   LinkTopic       =   "Form1"
   ScaleHeight     =   5745
   ScaleWidth      =   9330
   StartUpPosition =   3  'Windows Default
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
      Picture         =   "formUpdate.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   3600
      Width           =   1800
   End
   Begin VB.CommandButton cmdDelete 
      BackColor       =   &H0080FFFF&
      Caption         =   "Edit or Delete a Product"
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
      Left            =   5280
      Picture         =   "formUpdate.frx":057C
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2160
      Width           =   1800
   End
   Begin VB.CommandButton cmdInsert 
      BackColor       =   &H0080FFFF&
      Caption         =   "Add New Product"
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
      Left            =   1680
      Picture         =   "formUpdate.frx":09BE
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2160
      Width           =   1800
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FF8080&
      Caption         =   "UPDATE PRODUCT DETAILS"
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
      TabIndex        =   3
      Top             =   840
      Width           =   6615
   End
End
Attribute VB_Name = "formUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDelete_Click()
formEditorDelete.Show
End Sub

Private Sub cmdInsert_Click()
formAddNew.Show
End Sub

Private Sub cmdReturn_Click()
Unload Me
End Sub

