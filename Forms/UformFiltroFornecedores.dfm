inherited FormFiltroFornecedor: TFormFiltroFornecedor
  Caption = 'Filtro de Fornecedores'
  ClientHeight = 653
  ClientWidth = 1335
  FormStyle = fsMDIChild
  Visible = True
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1351
  ExplicitHeight = 692
  TextHeight = 15
  inherited FormFiltroPai: TPanel
    Width = 1335
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = -1
    ExplicitWidth = 1335
    inherited Label1: TLabel
      Width = 64
      Caption = 'Razao social'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 64
    end
    object Label2: TLabel [1]
      Left = 271
      Top = 8
      Width = 27
      Height = 15
      Caption = 'CNPJ'
    end
    inherited edtFiltro: TEdit
      Width = 265
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 265
    end
    inherited btnFiltro: TButton
      Left = 704
      Top = 28
      Caption = 'Filtro'
      OnClick = btnFiltroClick
      ExplicitLeft = 704
      ExplicitTop = 28
    end
    inherited Panel1: TPanel
      Left = 1239
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 1239
    end
    object btnVisualiza: TButton
      Left = 623
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 3
      OnClick = btnVisualizaClick
    end
    object btnNovo: TButton
      Left = 525
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Novo'
      DisabledImageName = 'btnNovo'
      TabOrder = 4
      OnClick = btnNovoClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 81
    Width = 1335
    Height = 572
    Align = alClient
    DataSource = DSFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtCNPJ: TEdit [2]
    Left = 271
    Top = 29
    Width = 121
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 2
  end
  inherited DSFiltro: TDataSource
    DataSet = FDQryFiltro
  end
  inherited FDQryFiltro: TFDQuery
    Active = True
    Connection = DataModule1.fdConnect
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Top = 168
    object FDQryFiltroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object FDQryFiltroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object FDQryFiltroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object FDQryFiltroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDQryFiltroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object FDQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object FDQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
  object FDTransaction1: TFDTransaction
    Connection = DataModule1.fdConnect
    Left = 560
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = FDQryFiltro
    Left = 560
    Top = 304
  end
end
