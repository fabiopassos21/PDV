inherited FormCadastroEstado: TFormCadastroEstado
  Caption = 'FRMCadastroEstado'
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 16
    Top = 104
    Width = 58
    Height = 15
    Caption = 'ID_ESTADO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 191
    Top = 104
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 328
    Top = 104
    Width = 31
    Height = 15
    Caption = 'SIGLA'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit [5]
    Left = 16
    Top = 120
    Width = 154
    Height = 23
    DataField = 'ID_ESTADO'
    DataSource = fdQRYCadastro
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [6]
    Left = 191
    Top = 125
    Width = 122
    Height = 23
    DataField = 'NOME'
    DataSource = fdQRYCadastro
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [7]
    Left = 328
    Top = 125
    Width = 65
    Height = 23
    DataField = 'SIGLA'
    DataSource = fdQRYCadastro
    TabOrder = 4
  end
  inherited FDQueryCadastro: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_ID'
    UpdateOptions.AutoIncFields = 'ID_ESTADO'
    SQL.Strings = (
      '            select * from estado')
    Top = 272
    object FDQueryCadastroID_ESTADO: TFDAutoIncField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = False
      IdentityInsert = True
    end
    object FDQueryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object FDQueryCadastroSIGLA: TWideStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
  end
end
