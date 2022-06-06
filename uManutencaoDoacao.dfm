inherited fManutencaoDoacao: TfManutencaoDoacao
  Caption = 'Manuten'#231#227'o de Doa'#231#227'o de Sangue'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelPrincipal: TPanel
    inherited PagePrincipal: TPageControl
      inherited TabSheetCampos: TTabSheet
        object Label1: TLabel
          Left = 168
          Top = 144
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = EDId
        end
        object Label2: TLabel
          Left = 168
          Top = 184
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label3: TLabel
          Left = 168
          Top = 224
          Width = 56
          Height = 13
          Caption = 'Quantiadde'
          FocusControl = EDQtde
        end
        object Label4: TLabel
          Left = 168
          Top = 264
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object Label5: TLabel
          Left = 336
          Top = 144
          Width = 46
          Height = 13
          Caption = 'Id Cliente'
          FocusControl = EDPessoa
        end
        object EDId: TDBEdit
          Left = 168
          Top = 160
          Width = 134
          Height = 21
          DataField = 'DOA_ID'
          DataSource = DataSourcePadrao
          Enabled = False
          TabOrder = 0
        end
        object EDQtde: TDBEdit
          Left = 168
          Top = 240
          Width = 102
          Height = 18
          DataField = 'DOA_QTDE'
          DataSource = DataSourcePadrao
          TabOrder = 3
        end
        object EDPessoa: TDBEdit
          Left = 336
          Top = 160
          Width = 69
          Height = 21
          DataField = 'PES_ID'
          DataSource = DataSourcePadrao
          TabOrder = 1
        end
        object BitBtnBuscarPessoa: TBitBtn
          Left = 424
          Top = 159
          Width = 113
          Height = 23
          Caption = 'Buscar Pessoa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtnBuscarPessoaClick
          OnExit = BitBtnBuscarPessoaExit
        end
        object DTPDoacao: TDateTimePicker
          Left = 168
          Top = 199
          Width = 154
          Height = 25
          Date = 44714.000000000000000000
          Time = 0.026922303237370220
          TabOrder = 4
        end
        object DBComboBox1: TDBComboBox
          Left = 168
          Top = 283
          Width = 145
          Height = 21
          DataField = 'DOA_STATUS'
          DataSource = DataSourcePadrao
          Items.Strings = (
            'N - Normal'
            'A - Anulado')
          TabOrder = 5
        end
      end
    end
  end
  inherited DataSourcePadrao: TDataSource
    DataSet = ADOQueryDoacao
    Left = 453
    Top = 49
  end
  object ADOQueryDoacao: TADOQuery
    Connection = Conexao.ADOConnection
    CursorType = ctStatic
    BeforeEdit = ADOQueryDoacaoBeforeEdit
    Parameters = <>
    SQL.Strings = (
      'SELECT D.*, P.PES_NOME FROM BS_DOACAO D (NOLOCK)'
      'LEFT JOIN BS_PESSOA P (NOLOCK) ON D.PES_ID = P.PES_ID')
    Left = 557
    Top = 49
    object ADOQueryDoacaoDOA_ID: TAutoIncField
      FieldName = 'DOA_ID'
      ReadOnly = True
    end
    object ADOQueryDoacaoDOA_DATA: TDateTimeField
      FieldName = 'DOA_DATA'
    end
    object ADOQueryDoacaoDOA_QTDE: TBCDField
      FieldName = 'DOA_QTDE'
      Precision = 18
      Size = 2
    end
    object ADOQueryDoacaoDOA_STATUS: TStringField
      FieldName = 'DOA_STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOQueryDoacaoPES_ID: TIntegerField
      FieldName = 'PES_ID'
    end
    object ADOQueryDoacaoPES_NOME: TStringField
      FieldName = 'PES_NOME'
      Size = 100
    end
  end
end
