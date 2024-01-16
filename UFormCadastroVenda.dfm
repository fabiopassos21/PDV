inherited FRMCadastroVenda: TFRMCadastroVenda
  Caption = 'FRMCadastroVenda'
  TextHeight = 15
  object Panel1: TPanel [2]
    Left = 0
    Top = 65
    Width = 896
    Height = 104
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 70
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 82
      Height = 15
      Caption = 'ID_VENDA_CAB'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 151
      Top = 5
      Width = 60
      Height = 15
      Caption = 'ID_CLIENTE'
    end
    object Label3: TLabel
      Left = 307
      Top = 5
      Width = 27
      Height = 15
      Caption = 'DATE'
      FocusControl = cxDBDateEdit1
    end
    object Label4: TLabel
      Left = 464
      Top = 6
      Width = 58
      Height = 15
      Caption = 'FATURADO'
      FocusControl = cxDBTextEdit1
    end
    object Label5: TLabel
      Left = 600
      Top = 6
      Width = 90
      Height = 15
      Caption = 'DATA_FATURADA'
      FocusControl = cxDBDateEdit2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 8
      Top = 27
      DataBinding.DataField = 'ID_VENDA_CAB'
      DataBinding.DataSource = fdQRYCadastro
      Enabled = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 307
      Top = 26
      DataBinding.DataField = 'DATE'
      DataBinding.DataSource = fdQRYCadastro
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 456
      Top = 27
      DataBinding.DataField = 'FATURADO'
      DataBinding.DataSource = fdQRYCadastro
      TabOrder = 2
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 600
      Top = 27
      DataBinding.DataField = 'DATA_FATURADA'
      DataBinding.DataSource = fdQRYCadastro
      TabOrder = 3
      Width = 121
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 151
      Top = 26
      Width = 114
      Height = 23
      DataField = 'ID_CLIENTE'
      DataSource = DSCadastro
      TabOrder = 4
    end
  end
  inherited FDQueryCadastro: TFDQuery
    SQL.Strings = (
      '                      select * from venda_cab')
    object FDQueryCadastroID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object FDQueryCadastroDATE: TDateField
      FieldName = 'DATE'
      Origin = '"DATE"'
    end
    object FDQueryCadastroFATURADO: TWideStringField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      Size = 1
    end
    object FDQueryCadastroDATA_FATURADA: TDateField
      FieldName = 'DATA_FATURADA'
      Origin = 'DATA_FATURADA'
    end
  end
end
