object FormfiltroPai: TFormfiltroPai
  Left = 0
  Top = 0
  Align = alRight
  Caption = 'FormFiltroPai'
  ClientHeight = 602
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  TextHeight = 15
  object FormFiltroPai: TPanel
    Left = 0
    Top = 0
    Width = 1001
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 624
    object Label1: TLabel
      Left = 0
      Top = 9
      Width = 34
      Height = 15
      Caption = 'Label1'
    end
    object edtFiltro: TEdit
      Left = 0
      Top = 30
      Width = 121
      Height = 23
      ImeName = 'Portuguese (Brazilian ABNT)'
      TabOrder = 0
      Text = 'edtFiltro'
    end
    object btnFiltro: TButton
      Left = 136
      Top = 29
      Width = 75
      Height = 25
      Caption = 'btnFiltro'
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 905
      Top = 1
      Width = 95
      Height = 79
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 528
      object Button1: TButton
        Left = 8
        Top = 28
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object DSFiltro: TDataSource
    Left = 560
    Top = 104
  end
  object FDQryFiltro: TFDQuery
    Left = 560
    Top = 176
  end
end
