inherited FormFiltroCliente: TFormFiltroCliente
  Left = 323
  Top = 17
  Caption = 'Filtro de Clientes'
  ClientHeight = 650
  ClientWidth = 1335
  FormStyle = fsMDIChild
  Position = poDesigned
  Visible = True
  StyleElements = [seFont, seClient, seBorder]
  StyleName = 'Windows'
  ExplicitWidth = 1351
  ExplicitHeight = 689
  TextHeight = 15
  inherited FormFiltroPai: TPanel
    Width = 1335
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1335
    inherited Label1: TLabel
      Left = 9
      Width = 90
      Caption = 'Nome do Cliente'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 9
      ExplicitWidth = 90
    end
    object Label2: TLabel [1]
      Left = 207
      Top = 8
      Width = 43
      Height = 15
      Caption = 'Fantasia'
    end
    object Label3: TLabel [2]
      Left = 334
      Top = 8
      Width = 53
      Height = 15
      Caption = 'CPF/CNPJ'
    end
    object Codigo: TLabel [3]
      Left = 461
      Top = 8
      Width = 39
      Height = 15
      Caption = 'Codigo'
    end
    inherited edtFiltro: TEdit
      Left = 9
      Width = 192
      Text = ''
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 9
      ExplicitWidth = 192
    end
    inherited btnFiltro: TButton
      Left = 588
      Top = 28
      Caption = 'Pesquisar'
      DisabledImageName = 'btnFiltro'
      OnClick = btnFiltroClick
      ExplicitLeft = 588
      ExplicitTop = 28
    end
    inherited Panel1: TPanel
      Left = 1239
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 1239
    end
    object edtFantasia: TEdit
      Left = 207
      Top = 29
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object edtCPF: TEdit
      Left = 334
      Top = 29
      Width = 121
      Height = 23
      ImeName = 'Portuguese (Brazilian ABNT)'
      TabOrder = 4
    end
    object edtCodigo: TEdit
      Left = 461
      Top = 29
      Width = 121
      Height = 23
      ImeName = 'Portuguese (Brazilian ABNT)'
      CanUndoSelText = True
      TabOrder = 5
    end
    object btnNovo: TButton
      Left = 669
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Novo'
      DisabledImageName = 'btnNovo'
      TabOrder = 6
      OnClick = btnNovoClick
    end
    object btnVisualiza: TButton
      Left = 766
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 7
      OnClick = btnVisualizaClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 81
    Width = 1335
    Height = 569
    Align = alClient
    DataSource = DSFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    StyleName = 'Windows'
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'Codigo '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Fantasia'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'E-mail'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CPF/CNPJ'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end>
  end
  inherited DSFiltro: TDataSource
    DataSet = FDQryFiltro
    Left = 520
    Top = 128
  end
  inherited FDQryFiltro: TFDQuery
    Connection = DataModule1.fdConnect
    SQL.Strings = (
      'select * from cliente')
    Left = 520
    object FDQryFiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object FDQryFiltroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object FDQryFiltroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object FDQryFiltroTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object FDQryFiltroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object FDQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object FDQryFiltroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object FDQryFiltroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object FDQryFiltroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQryFiltroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object FDQryFiltroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object FDQryFiltroOBS: TWideStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 100
    end
    object FDQryFiltroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object FDQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object FDQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  object FDTransaction: TFDTransaction
    Connection = DataModule1.fdConnect
    Left = 520
    Top = 232
  end
end
