VERSION 5.00
Begin VB.Form formMain 
   Caption         =   "Stock Maintenance System"
   ClientHeight    =   5715
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9105
   LinkTopic       =   "Form1"
   ScaleHeight     =   5715
   ScaleWidth      =   9105
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdPurchaseStock 
      BackColor       =   &H0080FFFF&
      Caption         =   "Purchase Stock"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1020
      Left            =   6720
      Picture         =   "formMain.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1800
      Width           =   1905
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
      Height          =   1020
      Left            =   4560
      Picture         =   "formMain.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1800
      Width           =   1905
   End
   Begin VB.CommandButton cmdExit 
      BackColor       =   &H0080FFFF&
      Caption         =   "Exit"
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
      Left            =   3600
      Picture         =   "formMain.frx":0BD4
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   3600
      Width           =   1800
   End
   Begin VB.CommandButton cmdDisplay 
      BackColor       =   &H0080FFFF&
      Caption         =   "Display"
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
      Left            =   2520
      Picture         =   "formMain.frx":1150
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1800
      Width           =   1800
   End
   Begin VB.CommandButton cmdUpdate 
      BackColor       =   &H0080FFFF&
      Caption         =   "Update"
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
      Left            =   480
      Picture         =   "formMain.frx":1A1A
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1800
      Width           =   1800
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      Caption         =   "STOCK MAINTENANCE SYSTEM"
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
      TabIndex        =   5
      Top             =   720
      Width           =   6615
   End
End
Attribute VB_Name = "formMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDisplay_Click()
formDisplay.Show
End Sub

Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub cmdPurchaseStock_Click()
formPurchaseStock.Show
End Sub

Private Sub cmdSearch_Click()
formSearch.Show
End Sub

Private Sub cmdUpdate_Click()
formUpdate.Show
End Sub

