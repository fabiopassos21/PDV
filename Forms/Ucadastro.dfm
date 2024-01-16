object uFormPai: TuFormPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'uFormCadPai'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Windows'
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 65
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 76
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Gravar'
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 151
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 226
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 548
      Top = 1
      Width = 75
      Height = 63
      Align = alRight
      Caption = 'Sair'
      TabOrder = 4
    end
  end
  object FDQueryCadastro: TFDQuery
    Left = 304
    Top = 224
  end
  object FDUpdCadastro: TFDUpdateSQL
    Left = 304
    Top = 288
  end
end
