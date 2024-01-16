object FRMCadastroPai: TFRMCadastroPai
  Left = 0
  Top = 0
  Caption = 'FRMCadastroPai'
  ClientHeight = 610
  ClientWidth = 896
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  StyleName = 'Windows'
  OnCreate = FormCreate
  TextHeight = 15
  object Button1: TButton
    Left = 264
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 896
    Height = 65
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 626
    object btnCancelar: TBitBtn
      Left = 151
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 76
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnNovo: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 2
      OnClick = btnNovoClick
    end
    object btnExcluir: TBitBtn
      Left = 226
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 820
      Top = 1
      Width = 75
      Height = 63
      Align = alRight
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
      ExplicitLeft = 550
    end
  end
  object FDQueryCadastro: TFDQuery
    Connection = DataModule1.fdConnect
    Transaction = FDTransation
    UpdateObject = FDUpdCadastro
    Left = 688
    Top = 264
  end
  object FDUpdCadastro: TFDUpdateSQL
    Connection = DataModule1.fdConnect
    Left = 688
    Top = 304
  end
  object FDTransation: TFDTransaction
    Connection = DataModule1.fdConnect
    Left = 688
    Top = 216
  end
  object fdQRYCadastro: TDataSource
    DataSet = FDQueryCadastro
    Left = 688
    Top = 176
  end
  object DSCadastro: TDataSource
    DataSet = FDQueryCadastro
    Left = 688
    Top = 128
  end
end
