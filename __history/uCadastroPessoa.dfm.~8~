inherited fCadastroPessoa: TfCadastroPessoa
  Caption = 'Cadastro de Pessoas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelPrincipal: TPanel
    inherited PagePrincipal: TPageControl
      ActivePage = TabSheetCampos
      inherited TabSheetCampos: TTabSheet
        object Label1: TLabel
          Left = 49
          Top = 56
          Width = 35
          Height = 13
          Caption = 'PES_ID'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 49
          Top = 96
          Width = 53
          Height = 13
          Caption = 'PES_NOME'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 49
          Top = 136
          Width = 78
          Height = 13
          Caption = 'PES_DATANASC'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 49
          Top = 176
          Width = 75
          Height = 13
          Caption = 'PES_TIPOSANG'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 49
          Top = 216
          Width = 54
          Height = 13
          Caption = 'PES_EMAIL'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 49
          Top = 256
          Width = 68
          Height = 13
          Caption = 'PES_CELULAR'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 49
          Top = 296
          Width = 43
          Height = 13
          Caption = 'PES_CPF'
          FocusControl = DBEdit7
        end
        object DBEdit1: TDBEdit
          Left = 49
          Top = 72
          Width = 134
          Height = 21
          DataField = 'PES_ID'
          DataSource = DataSourcePadrao
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 49
          Top = 112
          Width = 1213
          Height = 21
          DataField = 'PES_NOME'
          DataSource = DataSourcePadrao
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 49
          Top = 152
          Width = 238
          Height = 21
          DataField = 'PES_DATANASC'
          DataSource = DataSourcePadrao
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 49
          Top = 192
          Width = 30
          Height = 21
          DataField = 'PES_TIPOSANG'
          DataSource = DataSourcePadrao
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 49
          Top = 232
          Width = 1213
          Height = 21
          DataField = 'PES_EMAIL'
          DataSource = DataSourcePadrao
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 49
          Top = 272
          Width = 1213
          Height = 21
          DataField = 'PES_CELULAR'
          DataSource = DataSourcePadrao
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 49
          Top = 312
          Width = 1213
          Height = 21
          DataField = 'PES_CPF'
          DataSource = DataSourcePadrao
          TabOrder = 6
        end
      end
    end
  end
  inherited DataSourcePadrao: TDataSource
    DataSet = ADOQueryPessoa
    Left = 405
    Top = 49
  end
  object ADOQueryPessoa: TADOQuery
    Connection = Conexao.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM BS_PESSOA')
    Left = 533
    Top = 57
    object ADOQueryPessoaPES_ID: TAutoIncField
      FieldName = 'PES_ID'
      ReadOnly = True
    end
    object ADOQueryPessoaPES_NOME: TStringField
      FieldName = 'PES_NOME'
      Size = 100
    end
    object ADOQueryPessoaPES_DATANASC: TDateTimeField
      FieldName = 'PES_DATANASC'
    end
    object ADOQueryPessoaPES_TIPOSANG: TStringField
      FieldName = 'PES_TIPOSANG'
      FixedChar = True
      Size = 2
    end
    object ADOQueryPessoaPES_EMAIL: TStringField
      FieldName = 'PES_EMAIL'
      Size = 100
    end
    object ADOQueryPessoaPES_CELULAR: TStringField
      FieldName = 'PES_CELULAR'
      Size = 100
    end
    object ADOQueryPessoaPES_CPF: TStringField
      FieldName = 'PES_CPF'
      Size = 100
    end
  end
end
