VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows-Standard
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
    Dim objCtrl As Object

    Set objCtrl = CreateObjectFromFile( _
                        "mscomctl.ocx", _
                        "ImageCombo")

    If objCtrl Is Nothing Then
        MsgBox "couldn't create the obj"
    Else
        MsgBox "could create the obj"
        Set objCtrl = Nothing
    End If
End Sub
