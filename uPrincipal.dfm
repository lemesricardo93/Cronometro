object frmCronometro: TfrmCronometro
  Left = 0
  Top = 0
  Caption = 'Cronometro PC'
  ClientHeight = 274
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 139
    Width = 35
    Height = 13
    Caption = 'Nome.:'
  end
  object Label3: TLabel
    Left = 24
    Top = 163
    Width = 58
    Height = 13
    Caption = 'Solicita'#231#227'o.:'
  end
  object btnIncio: TButton
    Left = 91
    Top = 206
    Width = 75
    Height = 25
    Caption = '&Incio'
    TabOrder = 0
    OnClick = btnIncioClick
  end
  object btnPause: TButton
    Left = 172
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Pa&use'
    TabOrder = 1
    OnClick = btnPauseClick
  end
  object btnSalvar: TButton
    Left = 341
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
  end
  object btnStop: TButton
    Left = 253
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Parar'
    TabOrder = 3
    OnClick = btnStopClick
  end
  object grpTempo: TGroupBox
    Left = 208
    Top = 8
    Width = 273
    Height = 105
    Caption = 'Tempo Decorrido'
    TabOrder = 4
    object Label1: TLabel
      Left = 48
      Top = 32
      Width = 160
      Height = 48
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object edtNome: TEdit
    Left = 88
    Top = 136
    Width = 304
    Height = 21
    TabOrder = 5
  end
  object mskSolicitacao: TMaskEdit
    Left = 88
    Top = 163
    Width = 88
    Height = 21
    EditMask = '000.00000.0000;1;'
    MaxLength = 14
    TabOrder = 6
    Text = '   .     .    '
  end
  object lstValor: TListBox
    Left = 544
    Top = 8
    Width = 226
    Height = 258
    Style = lbOwnerDrawFixed
    TabOrder = 7
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 504
    Top = 8
  end
end
