inherited FRMCadastroCidade: TFRMCadastroCidade
  Caption = 'FRMCadastroCidade'
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 24
    Top = 80
    Width = 57
    Height = 15
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 184
    Top = 80
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 168
    Width = 22
    Height = 15
    Caption = 'OBS'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit [5]
    Left = 24
    Top = 101
    Width = 154
    Height = 23
    DataField = 'ID_CIDADE'
    DataSource = fdQRYCadastro
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [6]
    Left = 184
    Top = 101
    Width = 200
    Height = 23
    DataField = 'NOME'
    DataSource = fdQRYCadastro
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [7]
    Left = 16
    Top = 189
    Width = 201
    Height = 124
    DataField = 'OBS'
    DataSource = fdQRYCadastro
    TabOrder = 4
  end
  inherited FDQueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'select * from cidade')
    object FDQueryCadastroID_CIDADE: TFDAutoIncField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = False
      IdentityInsert = True
    end
    object FDQueryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object FDQueryCadastroOBS: TWideStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 10
    end
  end
end
