inherited FRMCadastroFornecedor: TFRMCadastroFornecedor
  Caption = 'FRMCadastroFornecedor'
  ClientHeight = 729
  ClientWidth = 914
  OnShow = FormShow
  ExplicitTop = -28
  ExplicitWidth = 930
  ExplicitHeight = 768
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 96
    Width = 91
    Height = 15
    Caption = 'ID_FORNECEDOR'
    FocusControl = cxDBSpinEdit1
  end
  object Label2: TLabel [1]
    Left = 151
    Top = 96
    Width = 84
    Height = 15
    Caption = 'RAZAO_SOCIAL'
    FocusControl = edtRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 488
    Top = 96
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = cxDBTextEdit2
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 160
    Width = 52
    Height = 15
    Caption = 'FANTASIA'
    FocusControl = cxDBTextEdit3
  end
  object Label5: TLabel [4]
    Left = 336
    Top = 160
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = cxDBTextEdit4
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 224
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = cxDBTextEdit5
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 283
    Width = 68
    Height = 15
    Caption = 'Cidade'
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 347
    Width = 35
    Height = 15
    Caption = 'Estado'
  end
  object Label9: TLabel [8]
    Left = 336
    Top = 224
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = cxDBTextEdit6
  end
  inherited Button1: TButton
    Left = 584
    Top = 551
    ExplicitLeft = 584
    ExplicitTop = 551
  end
  inherited pnlCabecalho: TPanel
    Width = 914
    inherited btnSair: TBitBtn
      Left = 838
    end
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [11]
    Left = 8
    Top = 117
    DataBinding.DataField = 'ID_FORNECEDOR'
    DataBinding.DataSource = fdQRYCadastro
    Enabled = False
    TabOrder = 2
    Width = 121
  end
  object edtRazaoSocial: TcxDBTextEdit [12]
    Left = 151
    Top = 117
    DataBinding.DataField = 'RAZAO_SOCIAL'
    DataBinding.DataSource = fdQRYCadastro
    TabOrder = 3
    Width = 313
  end
  object cxDBTextEdit2: TcxDBTextEdit [13]
    Left = 488
    Top = 117
    DataBinding.DataField = 'CNPJ'
    DataBinding.DataSource = fdQRYCadastro
    TabOrder = 4
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit [14]
    Left = 8
    Top = 181
    DataBinding.DataField = 'FANTASIA'
    DataBinding.DataSource = fdQRYCadastro
    TabOrder = 5
    Width = 313
  end
  object cxDBTextEdit4: TcxDBTextEdit [15]
    Left = 336
    Top = 181
    DataBinding.DataField = 'ENDERECO'
    DataBinding.DataSource = fdQRYCadastro
    TabOrder = 6
    Width = 259
  end
  object cxDBTextEdit5: TcxDBTextEdit [16]
    Left = 8
    Top = 245
    DataBinding.DataField = 'BAIRRO'
    DataBinding.DataSource = fdQRYCadastro
    TabOrder = 7
    Width = 313
  end
  object cxDBTextEdit6: TcxDBTextEdit [17]
    Left = 336
    Top = 245
    DataBinding.DataField = 'EMAIL'
    DataBinding.DataSource = fdQRYCadastro
    TabOrder = 8
    Width = 259
  end
  object DBLookupComboBox1: TDBLookupComboBox [18]
    Left = 8
    Top = 304
    Width = 185
    Height = 23
    DataField = 'ID_CIDADE'
    DataSource = DSCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.DSCidade
    TabOrder = 9
  end
  object DBLookupComboBox2: TDBLookupComboBox [19]
    Left = 8
    Top = 368
    Width = 137
    Height = 23
    DataField = 'ID_ESTADO'
    DataSource = DSCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListFieldIndex = 1
    ListSource = Lookup.DSEstado
    TabOrder = 10
  end
  inherited FDQueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDOR_ID'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'select * from fornecedor')
    object FDQueryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object FDQueryCadastroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object FDQueryCadastroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object FDQueryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDQueryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQueryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object FDQueryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object FDQueryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
end
