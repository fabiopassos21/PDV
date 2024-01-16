inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 530
  ClientWidth = 891
  OnShow = FormShow
  ExplicitWidth = 907
  ExplicitHeight = 569
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 88
    Width = 60
    Height = 15
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 168
    Top = 88
    Width = 84
    Height = 15
    Caption = 'RAZAO_SOCIAL'
    FocusControl = edtRazao
  end
  object Label3: TLabel [2]
    Left = 376
    Top = 88
    Width = 52
    Height = 15
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label5: TLabel [3]
    Left = 8
    Top = 152
    Width = 25
    Height = 15
    Caption = 'TIPO'
  end
  object Label6: TLabel [4]
    Left = 159
    Top = 152
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBEdit5
  end
  object Label7: TLabel [5]
    Left = 391
    Top = 152
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [6]
    Left = 597
    Top = 152
    Width = 21
    Height = 15
    Caption = 'SITE'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [7]
    Left = 8
    Top = 224
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [8]
    Left = 176
    Top = 224
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [9]
    Left = 8
    Top = 274
    Width = 9
    Height = 15
    Caption = 'IE'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [10]
    Left = 8
    Top = 336
    Width = 22
    Height = 15
    Caption = 'OBS'
    FocusControl = DBEdit11
  end
  object Label13: TLabel [11]
    Left = 214
    Top = 274
    Width = 14
    Height = 15
    Caption = 'IM'
    FocusControl = DBEdit12
  end
  object Cidade: TLabel [12]
    Left = 429
    Top = 224
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Estado: TLabel [13]
    Left = 429
    Top = 274
    Width = 35
    Height = 15
    Caption = 'Estado'
  end
  object Label4: TLabel [14]
    Left = 580
    Top = 88
    Width = 53
    Height = 15
    Caption = 'CPF_CNPJ'
    FocusControl = cxDBTextEdit1
  end
  inherited Button1: TButton
    Caption = 'Cadastro'
  end
  inherited pnlCabecalho: TPanel
    Width = 891
    ExplicitWidth = 891
    inherited btnSair: TBitBtn
      Left = 815
      ExplicitLeft = 815
    end
  end
  object DBEdit1: TDBEdit [17]
    Left = 8
    Top = 109
    Width = 154
    Height = 23
    DataField = 'ID_CLIENTE'
    DataSource = fdQRYCadastro
    TabOrder = 2
  end
  object edtRazao: TDBEdit [18]
    Left = 168
    Top = 109
    Width = 200
    Height = 23
    DataField = 'RAZAO_SOCIAL'
    DataSource = fdQRYCadastro
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [19]
    Left = 374
    Top = 109
    Width = 200
    Height = 23
    DataField = 'FANTASIA'
    DataSource = fdQRYCadastro
    TabOrder = 4
  end
  object Escolha: TDBComboBox [20]
    Left = 8
    Top = 173
    Width = 145
    Height = 23
    DataField = 'TIPO'
    DataSource = DSCadastro
    Items.Strings = (
      'FISICA'
      'JURIDICA')
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [21]
    Left = 159
    Top = 173
    Width = 226
    Height = 23
    DataField = 'NOME'
    DataSource = fdQRYCadastro
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [22]
    Left = 391
    Top = 173
    Width = 200
    Height = 23
    DataField = 'EMAIL'
    DataSource = fdQRYCadastro
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [23]
    Left = 597
    Top = 173
    Width = 100
    Height = 23
    DataField = 'SITE'
    DataSource = fdQRYCadastro
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [24]
    Left = 8
    Top = 245
    Width = 154
    Height = 23
    DataField = 'NUMERO'
    DataSource = fdQRYCadastro
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [25]
    Left = 176
    Top = 245
    Width = 200
    Height = 23
    DataField = 'BAIRRO'
    DataSource = fdQRYCadastro
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [26]
    Left = 8
    Top = 295
    Width = 200
    Height = 23
    DataField = 'IE'
    DataSource = fdQRYCadastro
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [27]
    Left = 8
    Top = 368
    Width = 265
    Height = 23
    DataField = 'OBS'
    DataSource = fdQRYCadastro
    TabOrder = 12
  end
  object DBEdit12: TDBEdit [28]
    Left = 214
    Top = 295
    Width = 200
    Height = 23
    DataField = 'IM'
    DataSource = fdQRYCadastro
    TabOrder = 13
  end
  object DBLookupComboBox1: TDBLookupComboBox [29]
    Left = 429
    Top = 245
    Width = 145
    Height = 23
    DataField = 'ID_CIDADE'
    DataSource = DSCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.DSCidade
    TabOrder = 14
  end
  object DBLookupComboBox2: TDBLookupComboBox [30]
    Left = 429
    Top = 295
    Width = 52
    Height = 23
    DataField = 'ID_ESTADO'
    DataSource = DSCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.DSEstado
    TabOrder = 15
  end
  object cxDBTextEdit1: TcxDBTextEdit [31]
    Left = 580
    Top = 109
    DataBinding.DataField = 'CPF_CNPJ'
    DataBinding.DataSource = fdQRYCadastro
    TabOrder = 16
    Width = 121
  end
  inherited FDQueryCadastro: TFDQuery
    BeforeInsert = FDQueryCadastroBeforeInsert
    BeforeEdit = FDQueryCadastroBeforeInsert
    FormatOptions.AssignedValues = [fvSE2Null]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    UpdateObject = nil
    SQL.Strings = (
      ' select * from cliente'
      '                               ')
    object FDQueryCadastroID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = False
      IdentityInsert = True
    end
    object FDQueryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object FDQueryCadastroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object FDQueryCadastroTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object FDQueryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object FDQueryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object FDQueryCadastroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object FDQueryCadastroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object FDQueryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQueryCadastroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object FDQueryCadastroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object FDQueryCadastroOBS: TWideStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 100
    end
    object FDQueryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object FDQueryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object FDQueryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object FDQueryCadastroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
  end
  inherited FDUpdCadastro: TFDUpdateSQL
    Top = 336
  end
end
