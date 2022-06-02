inherited fCadastroPessoa: TfCadastroPessoa
  Caption = 'Cadastro de Pessoas'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelPrincipal: TPanel
    inherited PagePrincipal: TPageControl
      inherited TabSheetCampos: TTabSheet
        object Label1: TLabel
          Left = 49
          Top = 56
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = EDId
        end
        object Label2: TLabel
          Left = 49
          Top = 96
          Width = 64
          Height = 13
          Caption = 'Nome Pessoa'
          FocusControl = EDNomePessoa
        end
        object Label3: TLabel
          Left = 49
          Top = 136
          Width = 81
          Height = 13
          Caption = 'Data Nascimento'
          FocusControl = EDNascimento
        end
        object Label4: TLabel
          Left = 49
          Top = 176
          Width = 73
          Height = 13
          Caption = 'Tipo Sangu'#237'neo'
          FocusControl = EDTipoSanguineo
        end
        object Label5: TLabel
          Left = 49
          Top = 216
          Width = 24
          Height = 13
          Caption = 'Email'
          FocusControl = EDEmail
        end
        object Label6: TLabel
          Left = 49
          Top = 256
          Width = 33
          Height = 13
          Caption = 'Celular'
          FocusControl = EDCelular
        end
        object Label7: TLabel
          Left = 49
          Top = 296
          Width = 17
          Height = 13
          Caption = 'Cpf'
          FocusControl = EDCpf
        end
        object EDId: TDBEdit
          Left = 49
          Top = 72
          Width = 134
          Height = 21
          DataField = 'PES_ID'
          DataSource = DataSourcePadrao
          Enabled = False
          TabOrder = 0
        end
        object EDNomePessoa: TDBEdit
          Left = 49
          Top = 112
          Width = 400
          Height = 21
          AutoSize = False
          DataField = 'PES_NOME'
          DataSource = DataSourcePadrao
          TabOrder = 1
        end
        object EDNascimento: TDBEdit
          Left = 49
          Top = 149
          Width = 238
          Height = 21
          DataField = 'PES_DATANASC'
          DataSource = DataSourcePadrao
          TabOrder = 2
        end
        object EDTipoSanguineo: TDBEdit
          Left = 49
          Top = 192
          Width = 30
          Height = 21
          DataField = 'PES_TIPOSANG'
          DataSource = DataSourcePadrao
          TabOrder = 3
        end
        object EDEmail: TDBEdit
          Left = 49
          Top = 232
          Width = 400
          Height = 21
          AutoSize = False
          DataField = 'PES_EMAIL'
          DataSource = DataSourcePadrao
          TabOrder = 4
        end
        object EDCelular: TDBEdit
          Left = 49
          Top = 272
          Width = 400
          Height = 21
          AutoSize = False
          DataField = 'PES_CELULAR'
          DataSource = DataSourcePadrao
          TabOrder = 5
        end
        object EDCpf: TDBEdit
          Left = 49
          Top = 312
          Width = 400
          Height = 21
          AutoSize = False
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
    Top = 49
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
