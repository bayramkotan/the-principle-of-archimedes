VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sývýlarýn Kaldýrma Kuvveti - KATÜ GRUBU"
   ClientHeight    =   9900
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   17385
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   162
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   9900
   ScaleWidth      =   17385
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox Check2 
      Caption         =   "Keyfi"
      Height          =   255
      Left            =   13560
      TabIndex        =   26
      Top             =   480
      Width           =   855
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Keyfi"
      Height          =   255
      Left            =   13560
      TabIndex        =   25
      Top             =   1200
      Width           =   975
   End
   Begin VB.CommandButton Command4 
      Caption         =   "3. Durum"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   14640
      TabIndex        =   24
      Top             =   2880
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "2. Durum"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   14640
      TabIndex        =   23
      Top             =   2400
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "1. Durum"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   14640
      TabIndex        =   22
      Top             =   1920
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   35
      Left            =   360
      Top             =   9120
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "Form1.frx":1CCA
      Left            =   14640
      List            =   "Form1.frx":1CCC
      TabIndex        =   18
      Text            =   "Combo2"
      Top             =   480
      Width           =   1695
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form1.frx":1CCE
      Left            =   14640
      List            =   "Form1.frx":1CD0
      TabIndex        =   15
      Text            =   "Combo1"
      Top             =   1200
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Hesapla"
      Default         =   -1  'True
      Height          =   495
      Left            =   480
      TabIndex        =   10
      Top             =   5280
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "Cismin Büyüklükleri"
      ForeColor       =   &H00C000C0&
      Height          =   2175
      Left            =   240
      TabIndex        =   5
      Top             =   3000
      Width           =   1935
      Begin VB.TextBox Text3 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   240
         TabIndex        =   8
         Top             =   1320
         Width           =   1455
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Hacim"
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   840
         Width           =   1455
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Kütle"
         Height          =   495
         Left            =   240
         TabIndex        =   6
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         Caption         =   "gr"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   9
         Top             =   1680
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Özkütleler (gr/cm³)"
      ForeColor       =   &H00C000C0&
      Height          =   2655
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1935
      Begin VB.TextBox Text2 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Top             =   2040
         Width           =   1575
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   2
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         Caption         =   "Cismin Özkütlesi"
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   1560
         Width           =   1335
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "Sývýnýn Özkütlesi"
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      Caption         =   "Label12"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5040
      TabIndex        =   21
      Top             =   1200
      Visible         =   0   'False
      Width           =   3615
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      Caption         =   "Label11"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   5160
      TabIndex        =   20
      Top             =   720
      Visible         =   0   'False
      Width           =   3375
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      Caption         =   "Label10"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5160
      TabIndex        =   19
      Top             =   120
      Visible         =   0   'False
      Width           =   3375
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      Caption         =   "Sývý"
      Height          =   255
      Left            =   14640
      TabIndex        =   17
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "Cisim"
      Height          =   255
      Left            =   14640
      TabIndex        =   16
      Top             =   960
      Width           =   1575
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label7"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   240
      TabIndex        =   14
      Top             =   6840
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "Batan Hacim"
      Height          =   255
      Left            =   360
      TabIndex        =   13
      Top             =   6600
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label5"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   240
      TabIndex        =   12
      Top             =   6240
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Cismin Hacmi"
      Height          =   255
      Left            =   360
      TabIndex        =   11
      Top             =   6000
      Visible         =   0   'False
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim genislik, yukseklik As Integer
Dim alan_gen, alan_yuk As Integer
Dim kutle, dc, ds, vc, vb, hb, hc As Double
Dim hesaplandi As Boolean
Dim hareket_etti As Boolean
Dim j As Integer

Dim kaldirma As Double 'kaldirma kuvveti
Dim agirlik As Double  'Cismin Agirligi
'hesaplandi = False

Private Sub Check1_Click()
If Check1.Value = 1 Then
    Combo1.Text = "Keyfi"
    Combo1.Enabled = False
    Text2.Enabled = True
    Text2.Text = ""
ElseIf Check1.Value = 0 Then
    Combo1.Text = "Keyfi"
    Combo1.Enabled = True
    Text2.Enabled = False
End If
End Sub

Private Sub Check2_Click()
If Check2.Value = 1 Then
    Combo2.Text = "Keyfi"
    Combo2.Enabled = False
    Text1.Enabled = True
    Text1.Text = ""
ElseIf Check2.Value = 0 Then
    Combo2.Text = "Keyfi"
    Combo2.Enabled = True
    Text1.Enabled = False
End If
End Sub

Private Sub Combo1_Click()
 If Combo1.Text = "Keyfi" Then
    Text2.Text = ""
 ElseIf Combo1.Text = "Demir" Then
    Text2.Text = "7,86"
 ElseIf Combo1.Text = "Altýn" Then
    Text2.Text = "19,30"
 ElseIf Combo1.Text = "Kurþun" Then
    Text2.Text = "11,30"
 ElseIf Combo1.Text = "Bakýr" Then
    Text2.Text = "8,92"
 ElseIf Combo1.Text = "Alüminyum" Then
    Text2.Text = "2,70"
 End If
 
 If Combo1.Text = "Keyfi" Then
    Text2.Enabled = True
Else
    Text2.Enabled = False
End If
End Sub

Private Sub Combo2_Click()
If Combo2.Text = "Keyfi" Then
    Text1.Text = ""
ElseIf Combo2.Text = "Kloroform" Then
    Text1.Text = "1,49"
ElseIf Combo2.Text = "Su(+4°C)" Then
    Text1.Text = "1,00"
ElseIf Combo2.Text = "Zeytin yaðý" Then
    Text1.Text = "0,91"
ElseIf Combo2.Text = "Benzin" Then
    Text1.Text = "0,88"
ElseIf Combo2.Text = "EtilAlkol" Then
    Text1.Text = "0,78"
ElseIf Combo2.Text = "Oksijen" Then
    Text1.Text = "0,00143"
ElseIf Combo2.Text = "Hava" Then
    Text1.Text = "0,00129"
ElseIf Combo2.Text = "Azot" Then
    Text1.Text = "0,00125"
ElseIf Combo2.Text = "Helyum" Then
    Text1.Text = "0,000178"
End If

If Combo2.Text = "Keyfi" Then
    Text1.Enabled = True
Else
    Text1.Enabled = False
End If

End Sub

Private Sub Command1_Click()
If Text1.Text <> "" And Text2.Text <> "" And Text3.Text <> "" Then
ds = CDbl(Text1.Text) 'Sivinin Ozkutlesi
dc = CDbl(Text2.Text) 'Cismin Ozkutlesi
    
    If (Option1.Value = True) Then
        'Kutle secili ise hacmi hesapla
        kutle = CDbl(Text3.Text)
        vc = (kutle / dc)
    Else
        'Hacim secili ise kutleyi hesapla
        vc = CDbl(Text3.Text)
        kutle = vc * dc
    End If
    
    
    
    
    
    If dc > ds Then
        'eger cismin özkütlesi daha büyükse cisim tamamen batar
        vb = vc
    ElseIf dc = ds Then
        'eger cisminlerin ozkutleleri esitse cisim asili kalir
         Label11.Visible = True
         Label11.Caption = "Cisim Asýlý Kalýr"
         'seçenekleri ver
         Command2.Visible = True
         Command3.Visible = True
         Command4.Visible = True
         
         Command2.Enabled = False
         Command3.Enabled = True
         Command4.Enabled = True
         
    ElseIf ds > dc Then
        'eger cismin özkütlesi daha küçük ve eþitse vb
        vb = vc * (dc / ds)
    End If
    

    
       
    
    'degerleri yuvarliyalim
    vb = Round(vb, 4)
    vc = Round(vc, 4)
    kutle = Round(kutle, 4)
    
    Label4.Visible = True
    Label5.Visible = True
    Label6.Visible = True
    Label7.Visible = True
    Label10.Visible = True
    
    
        If (Option1.Value = True) Then
            Label4.Caption = "Cismin Hacmi"
            Label5.Caption = vc & " cm³"
    
        Else
            Label4.Caption = "Cismin Kütlesi"
            Label5.Caption = kutle & " gr"
        End If
        
        'eðer cismin özkütlesi sývýnýnkinden büyükse
        If dc > ds Then
            Label7.Caption = vc & " cm³(hepsi)"
        ElseIf dc = ds Then
            Label7.Caption = " Cisim Asýlý Kalýr "
        ElseIf dc < ds Then
            Label7.Caption = vb & " cm³"
        End If
        
        'Yükseklikler oraný
        If ds > dc Then
            If Round((dc / ds), 4) = (dc / ds) Then
                Label10.Caption = "hb/hc=" & Round((dc / ds), 4)
            Else
                Label10.Caption = "hb/hc~" & Round((dc / ds), 4)
            End If
            
            
        ElseIf dc > ds Then
            Label10.Caption = "hb/hc=1"
            Label11.Visible = True
            Label11.Caption = "Cisim Dibe Batar"
        Else
            'Label11.Visible = True
            'Label10.Caption = "hb/hc deðiþken"
            'Label11.Caption = "Cisim Asýlý Kalýr"
        End If
        
        hesaplandi = True
        Label12.Visible = True
Else
MsgBox "Deðerleri tam giriniz", , "HATA"
End If

    'oklari ciz
    If dc <> ds Then
        oklari_ciz (0)
    Else
        agirlik = kutle * (9.80665)
        kaldirma = agirlik
        hareket_etti = False
        j = 0
        Timer1.Enabled = False
        Command2_Click
        oklari_ciz (0.2 * alan_yuk)
        Exit Sub
    End If
    
    hareket_etti = False
    Timer1.Enabled = True
    j = 0
End Sub

Private Sub Command2_Click() '1. Durum
    Form1.Cls
    Kab_Ciz
    kaldirma = agirlik
    Line (alan_gen * 0.35, alan_yuk * 0.5)-(alan_gen * 0.65, alan_yuk * 0.7), vbCyan, BF
    DrawWidth = 2
    Line (alan_gen * 0.35, alan_yuk * 0.5)-(alan_gen * 0.65, alan_yuk * 0.7), vbBlack, B
    
    Label12.Caption = "Fk=G"
    oklari_ciz (0.2 * alan_yuk)
    Timer1.Enabled = False
    
    Label10.Caption = "hb/hc=1"
    Command2.Enabled = False
    Command3.Enabled = True
    Command4.Enabled = True
End Sub

Private Sub Command3_Click() '2. Durum
    Form1.Cls
    Kab_Ciz
    kaldirma = agirlik
    Line (alan_gen * 0.35, alan_yuk * 0.4 + 25)-(alan_gen * 0.65, alan_yuk * 0.6 + 25), vbCyan, BF
    DrawWidth = 2
    Line (alan_gen * 0.35, alan_yuk * 0.4 + 25)-(alan_gen * 0.65, alan_yuk * 0.6 + 25), vbBlack, B
    
    Label12.Caption = "Fk=G"
    oklari_ciz (0.1 * alan_yuk + 25)
    Timer1.Enabled = False
    
    Label10.Caption = "hb/hc=1"
    Command2.Enabled = True
    Command3.Enabled = False
    Command4.Enabled = True
End Sub

Private Sub Command4_Click() ' 3.durum
    Form1.Cls
    Kab_Ciz
    kaldirma = agirlik
    Line (alan_gen * 0.35, alan_yuk * 0.6 - 25)-(alan_gen * 0.65, alan_yuk * 0.8 - 25), vbCyan, BF
    DrawWidth = 2
    Line (alan_gen * 0.35, alan_yuk * 0.6 - 25)-(alan_gen * 0.65, alan_yuk * 0.8 - 25), vbBlack, B
   
    Label12.Caption = "Fk=G"
    oklari_ciz (0.3 * alan_yuk + 25)
    Timer1.Enabled = False
    
    Label10.Caption = "hb/hc=1"
    Command2.Enabled = True
    Command3.Enabled = True
    Command4.Enabled = False
End Sub

Private Sub Form_Load()
    Option1.Value = True
    
    genislik = Screen.Width
    yukseklik = Screen.Height
    'MsgBox Screen.Width & " " & Screen.Height
    
    'Ekran cozurlugune gore ayarla
    If genislik > 13000 And yukseklik > 10000 Then
        alan_gen = genislik * 0.88
        alan_yuk = yukseklik * 0.88
    Else 'Ekran cozunurlugu kucuk ise
        alan_gen = genislik
        alan_yuk = yukseklik
    End If
    
    'ekrana göre ayarla
    Me.Height = alan_yuk
    Me.Width = alan_gen
    
  'Kontrolleri Saða kaydýr(sývý, cisim çeþitleri)
  Combo1.Left = alan_gen * 0.85
  Combo2.Left = alan_gen * 0.85
  Label8.Left = alan_gen * 0.85
  Label9.Left = alan_gen * 0.85
  Label10.Left = alan_gen * 0.425
  Label11.Left = alan_gen * 0.425
  Label12.Left = alan_gen * 0.425
  
  Command2.Left = alan_gen * 0.85
  Command3.Left = alan_gen * 0.85
  Command4.Left = alan_gen * 0.85
  Check1.Left = alan_gen * 0.78
  Check2.Left = alan_gen * 0.78
  
  Check1.Value = 1
  Check2.Value = 1
  
  Combo1.AddItem "Keyfi"
  Combo1.AddItem "Altýn"
  Combo1.AddItem "Kurþun"
  Combo1.AddItem "Bakýr"
  Combo1.AddItem "Demir"
  Combo1.AddItem "Alüminyum"
  
  Combo2.AddItem "Keyfi"
  Combo2.AddItem "Su(+4°C)"
  Combo2.AddItem "Zeytin yaðý"
  Combo2.AddItem "Kloroform"
  Combo2.AddItem "Benzin"
  Combo2.AddItem "Etilalkol"
  Combo2.AddItem "Oksijen"
  Combo2.AddItem "Hava"
  Combo2.AddItem "Azot"
  Combo2.AddItem "Helyum"
  
  Combo1.ListIndex = 0
  Combo2.ListIndex = 0
  
  Combo1.Enabled = False
  Combo2.Enabled = False
  

  
    'dýþ hattý çiz
    kutu_ciz
   
End Sub


Private Sub kutu_ciz()

'Kutunun kenarlarinin kalinligi
Dim k As Integer
k = 50 'kenar çizgileri kalinliginin yarisini verir


    'Ekrani Sil
    Form1.Cls
    
    'CIZGI KALINLIGI
    DrawWidth = 7
    
    'SOL KENAR
    Line (alan_gen * 0.2, alan_yuk * 0.2)-(alan_gen * 0.2, alan_yuk * 0.8), vbBlack
    
    'ALT TABAN
    Line (alan_gen * 0.2, alan_yuk * 0.8)-(alan_gen * 0.8, alan_yuk * 0.8), vbBlack
    
    'SAG KENAR
    Line (alan_gen * 0.8, alan_yuk * 0.2)-(alan_gen * 0.8, alan_yuk * 0.8), vbBlack
    
    DrawWidth = 1
    'ICINI BOYA
    Line (alan_gen * 0.2 + k, alan_yuk * 0.4)-(alan_gen * 0.8 - k, alan_yuk * 0.8 - k), vbBlue, BF
    
    DrawWidth = 5
    Line (0, alan_yuk * 0.8 + k)-(alan_gen, alan_yuk * 0.8 + k), vbBlack
    
    'BATAN CISMI CIZ
    DrawWidth = 2
    Line (alan_gen * 0.35, alan_yuk * 0.3)-(alan_gen * 0.65, alan_yuk * 0.5), vbCyan, BF
    Line (alan_gen * 0.35, alan_yuk * 0.3)-(alan_gen * 0.65, alan_yuk * 0.5), vbBlack, B
    
    DrawWidth = 1
    'SU YUKSEKLIGI
    Line (alan_gen * 0.2, alan_yuk * 0.4)-(alan_gen * 0.8, alan_yuk * 0.4), vbBlue
    
    'KUTUNUN ALTINDAKI TABAKAYI BOYA
    Line (0, alan_yuk * 0.8 + k)-(alan_gen, alan_yuk), vbWhite, BF
    
    

   
    
    

End Sub

Private Sub Form_Paint()
 
  kutu_ciz
  If Text1.Text <> "" And Text2.Text <> "" And Text3.Text <> "" And (hesaplandi = True) Then
    Command1_Click
  End If
End Sub

Private Sub Form_Resize()
    kutu_ciz
End Sub

Private Sub Option1_Click()
    Label3.Caption = "gr"
    
    yoket
    
End Sub

Private Sub Option2_Click()
    Label3.Caption = "cm³"
    
    yoket
    
End Sub

Private Sub Text1_Change()
    yoket
    
On Error GoTo hata
        If Not IsNumeric(CDbl(Text1.Text)) Then
            Text1.Text = ""
        Else
            If CDbl(Text1.Text) < 0 Or CDbl(Text1.Text) > 999 Then
            MsgBox "Sývýnýn Özkütle deðerini 0 ile 1000 arasýnda seçin", vbOKOnly, "HATA"
hata:
                Text1.Text = ""
            End If
        End If
        
End Sub

Private Sub Text2_Change()

   yoket
   
On Error GoTo hata
        If Not IsNumeric(CDbl(Text2.Text)) Then
            Text2.Text = ""
        Else
            If CDbl(Text2.Text) < 0 Or CDbl(Text2.Text) > 999 Then
            MsgBox "Cismin Özkütle deðerini 0 ile 1000 arasýnda seçin", vbOKOnly, "HATA"
hata:
                Text2.Text = ""
            End If
        End If
End Sub

Private Sub Text3_Change()

    
    yoket

On Error GoTo hata
        If Not IsNumeric(CDbl(Text3.Text)) Then
            Text3.Text = ""
        Else
            If CDbl(Text3.Text) < 0 Or CDbl(Text3.Text) > 99999999 Then
            
            If Option1.Value = True Then
                MsgBox "Cismin Kütlesini 0 ile 100000000 arasýnda seçin", vbOKOnly, "HATA"
            Else
                MsgBox "Cismin Hacmini 0 ile 100000000 arasýnda seçin", vbOKOnly, "HATA"
            End If
hata:
                Text3.Text = ""
            End If
        End If
End Sub

Private Sub yoket()
    Label4.Visible = False
    Label5.Visible = False
    Label6.Visible = False
    Label7.Visible = False
    Label10.Visible = False
    hesaplandi = False
    Label11.Visible = False
    Label12.Visible = False
    Timer1.Enabled = False
    Command2.Visible = False
    Command3.Visible = False
    Command4.Visible = False
    
End Sub

Private Sub Timer1_Timer()
If Text1.Text <> "" And Text2.Text <> "" And Text3.Text <> "" Then
    
    If (Option1.Value = True) Then
        'Kutle secili ise hacmi hesapla
        kutle = CDbl(Text3.Text)
        vc = (kutle / dc)
    Else
        'Hacim secili ise kutleyi hesapla
        vc = CDbl(Text3.Text)
        kutle = vc * dc
    End If
    
   
    vc = Round(vc, 4)
    kutle = Round(kutle, 4)
    
    agirlik = kutle * (9.80665)
    agirlik = Round(agirlik, 4)
    '___________________________________
    
    'BATAN CISMI CIZ
    'Dim i As Integer
    Dim fark As Double
    Dim hc As Double
    hc = 0.2 * alan_yuk 'Cismin boyu
    fark = (dc / ds) * hc
    
    '__________________________
    If dc < ds Then
        vb = (dc / ds) * vc
    ElseIf dc > ds Then
        vb = vc
    Else
        vb = vc / 2
    End If
    '__________________________
    
    vb = Round(vb, 4)
     
    Dim hb As Double
    
    Form1.Cls
    
    Kab_Ciz
    
    'kutu kenar kalinliginin yarisi
    Dim k As Integer
    k = 50
    
  
     
     DrawWidth = 2
     
    'kutuyu kaydir
    
    If dc = ds Then
            
          kaldirma = agirlik
          Line (alan_gen * 0.35, alan_yuk * 0.3)-(alan_gen * 0.65, alan_yuk * 0.5), vbCyan, BF
          Line (alan_gen * 0.35, alan_yuk * 0.3)-(alan_gen * 0.65, alan_yuk * 0.5), vbBlack, B
          oklari_ciz (0)
          Label12.Caption = "Fk=G"
          Timer1.Enabled = False
    ElseIf dc > ds Then
            
            j = j + 25
            Line (alan_gen * 0.35, alan_yuk * 0.3 + j)-(alan_gen * 0.65, alan_yuk * 0.5 + j), vbCyan, BF
            Line (alan_gen * 0.35, alan_yuk * 0.3 + j)-(alan_gen * 0.65, alan_yuk * 0.5 + j), vbBlack, B
            oklari_ciz (j)
            Label12.Caption = "Fk<G"
            
            '______
        If j <= (0.1 * alan_yuk) Then
            hb = ((dc / ds) * (0.2 * alan_yuk))
            kaldirma = (vc * ds * (9.80665)) * (j / (0.1 * alan_yuk))
            kaldirma = Round(kaldirma, 4)
        End If

        If j > ((0.1 * alan_yuk)) And (j <= (0.3 * alan_yuk)) Then
            kaldirma = vc * ds * (9.80665) 'cisim tam battý
        End If

        If j >= (0.3 * alan_yuk) - k Then
            Timer1.Enabled = False
            Label12.Caption = "Fk<G"
            kaldirma = agirlik
        End If
        
        
        
    ElseIf ds > dc Then
            
         If dc / ds < 1 / 2 Then 'YUKARI DOGRU CIK, cisim gereginden fazla batmis
            j = j + 25
            Line (alan_gen * 0.35, alan_yuk * 0.3 - j)-(alan_gen * 0.65, alan_yuk * 0.5 - j), vbCyan, BF
            Line (alan_gen * 0.35, alan_yuk * 0.3 - j)-(alan_gen * 0.65, alan_yuk * 0.5 - j), vbBlack, B
            oklari_ciz (-j)
            hb = ((dc / ds) * (0.2 * alan_yuk))
            Label12.Caption = "Fk>G"
            
            'kaldirma = vb * ds * (9.80665) * (j / ((0.1 * alan_yuk) - hb))
            kaldirma = (vb * ds * (9.80665)) * (((0.1 * alan_yuk) - hb) / j)
            'kaldirma = agirlik * (((0.1 * alan_yuk) - hb) / j)
            kaldirma = Round(kaldirma, 4)
            
            If j >= (0.1 * alan_yuk) - hb Then
                
                Label12.Caption = "Fk=G"
                'kaldirma = (vb * ds * (9.80665))
                agirlik = vc * dc * (9.80665)
                kaldirma = agirlik
                kaldirma = Round(kaldirma, 4)
                 '____________------__________________------________________
                Form1.Cls
                Kab_Ciz
                Line (alan_gen * 0.35, alan_yuk * 0.3 - j)-(alan_gen * 0.65, alan_yuk * 0.5 - j), vbCyan, BF
                DrawWidth = 2
                Line (alan_gen * 0.35, alan_yuk * 0.3 - j)-(alan_gen * 0.65, alan_yuk * 0.5 - j), vbBlack, B
                oklari_ciz (-j)
                j = 0
                Timer1.Enabled = False
            End If
        ElseIf dc / ds = 1 / 2 Then
            Line (alan_gen * 0.35, alan_yuk * 0.3)-(alan_gen * 0.65, alan_yuk * 0.5), vbCyan, BF
            Line (alan_gen * 0.35, alan_yuk * 0.3)-(alan_gen * 0.65, alan_yuk * 0.5), vbBlack, B
            agirlik = vc * dc * (9.80665)
            kaldirma = agirlik
            oklari_ciz (j)
            Timer1.Enabled = False
            Label12.Caption = "Fk=G"
            
            'kaldirma = vb * dc * (9.80665)
            kaldirma = agirlik
            kaldirma = Round(kaldirma, 4)
        ElseIf dc / ds > 1 / 2 Then 'ASAGI DOGRU IN, cisim batmasi gereken bir kismi disarda
            j = j + 25
            Line (alan_gen * 0.35, alan_yuk * 0.3 + j)-(alan_gen * 0.65, alan_yuk * 0.5 + j), vbCyan, BF
            Line (alan_gen * 0.35, alan_yuk * 0.3 + j)-(alan_gen * 0.65, alan_yuk * 0.5 + j), vbBlack, B
            oklari_ciz (j)
            Label12.Caption = "Fk<G"
            
            'kaldirma = vb * dc * (9.80665) * (j / (((dc / ds) * (0.2 * alan_yuk)) - (0.1 * alan_yuk)))
            kaldirma = (agirlik / 2) + ((agirlik / 2) * (j / (((dc / ds) * (0.2 * alan_yuk)) - (0.1 * alan_yuk))))
            kaldirma = Round(kaldirma, 4)
            
            If j >= ((dc / ds) * (0.2 * alan_yuk)) - (0.1 * alan_yuk) Then
                
                Label12.Caption = "Fk=G"
                agirlik = vc * dc * (9.80665)
                kaldirma = agirlik
                '____________------__________________------________________
                 Form1.Cls
                 Kab_Ciz
                 Line (alan_gen * 0.35, alan_yuk * 0.3 + j)-(alan_gen * 0.65, alan_yuk * 0.5 + j), vbCyan, BF
                 DrawWidth = 2
                 Line (alan_gen * 0.35, alan_yuk * 0.3 + j)-(alan_gen * 0.65, alan_yuk * 0.5 + j), vbBlack, B
                 oklari_ciz (j)
                 j = 0
                 Timer1.Enabled = False
            End If
            
        End If
         
    End If
     
    End If
End Sub

Private Sub oklari_ciz(l As Integer)
    If Text1.Text <> "" And Text2.Text <> "" And Text3.Text <> "" Then
    'G okunu Ciz
    DrawWidth = 4
    Line (alan_gen * 0.5, alan_yuk * 0.4 + l)-(alan_gen * 0.5, alan_yuk * 0.7 + l), vbRed
    Line (alan_gen * 0.48, alan_yuk * 0.68 + l)-(alan_gen * 0.5, alan_yuk * 0.7 + l), vbRed
    Line (alan_gen * 0.52, alan_yuk * 0.68 + l)-(alan_gen * 0.5, alan_yuk * 0.7 + l), vbRed
    
    'G yi Ciz
    Dim yaziG As String
    'agirlik = kutle * (9.80665)
    agirlik = Round(agirlik, 4)
    yaziG = "G =" & agirlik & " * 10¯³ N"
    CurrentX = alan_gen * 0.55
    If l <= 0.2 * alan_yuk Then
        CurrentY = alan_yuk * 0.65 + l
    Else
        CurrentY = alan_yuk * 0.85
    End If
    FontSize = 18
    FontBold = True
     Print yaziG
   
     
    'F okunu Ciz
    Line (alan_gen * 0.46, alan_yuk * 0.5 + l)-(alan_gen * 0.46, alan_yuk * 0.78 + l), vbRed
    Line (alan_gen * 0.44, alan_yuk * 0.52 + l)-(alan_gen * 0.46, alan_yuk * 0.5 + l), vbRed
    Line (alan_gen * 0.48, alan_yuk * 0.52 + l)-(alan_gen * 0.46, alan_yuk * 0.5 + l), vbRed
    
   
    'F yi Ciz
    Dim yaziF As String
    kaldirma = Round(kaldirma, 4)
    yaziF = "F =" & kaldirma & " * 10¯³ N"
    CurrentX = alan_gen * 0.24
     If l <= 0.2 * alan_yuk Then
        CurrentY = alan_yuk * 0.65 + l
    Else
        CurrentY = alan_yuk * 0.85
    End If
    FontSize = 18
    FontBold = True
    Print yaziF
    End If
End Sub

Private Sub Kab_Ciz()
    
    
    Dim k As Integer
    k = 50 'kenar çizgileri kalinliginin yarisini verir


    'Ekrani Sil
    Form1.Cls
    
    'CIZGI KALINLIGI
    DrawWidth = 7
    
    'SOL KENAR
    Line (alan_gen * 0.2, alan_yuk * 0.2)-(alan_gen * 0.2, alan_yuk * 0.8), vbBlack
    
    'ALT TABAN
    Line (alan_gen * 0.2, alan_yuk * 0.8)-(alan_gen * 0.8, alan_yuk * 0.8), vbBlack
    
    'SAG KENAR
    Line (alan_gen * 0.8, alan_yuk * 0.2)-(alan_gen * 0.8, alan_yuk * 0.8), vbBlack
    
    DrawWidth = 1
    'ICINI BOYA
    Line (alan_gen * 0.2 + k, alan_yuk * 0.4)-(alan_gen * 0.8 - k, alan_yuk * 0.8 - k), vbBlue, BF
    
    DrawWidth = 5
    Line (0, alan_yuk * 0.8 + k)-(alan_gen, alan_yuk * 0.8 + k), vbBlack
    
    DrawWidth = 1
    'SU YUKSEKLIGI
    Line (alan_gen * 0.2, alan_yuk * 0.4)-(alan_gen * 0.8, alan_yuk * 0.4), vbBlue
    
    'KUTUNUN ALTINDAKI TABAKAYI BOYA
    Line (0, alan_yuk * 0.8 + k)-(alan_gen, alan_yuk), vbWhite, BF
    
    

End Sub
