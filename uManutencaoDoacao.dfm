inherited fManutencaoDoacao: TfManutencaoDoacao
  Caption = 'Manuten'#231#227'o de Doa'#231#227'o de Sangue'
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
          FocusControl = EDData
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
          FocusControl = EDStatus
        end
        object Label5: TLabel
          Left = 168
          Top = 304
          Width = 35
          Height = 13
          Caption = 'PES_ID'
          FocusControl = DBEdit5
        end
        object EDId: TDBEdit
          Left = 168
          Top = 160
          Width = 134
          Height = 21
          DataField = 'DOA_ID'
          DataSource = DataSourcePadrao
          TabOrder = 0
        end
        object EDData: TDBEdit
          Left = 168
          Top = 200
          Width = 238
          Height = 21
          DataField = 'DOA_DATA'
          DataSource = DataSourcePadrao
          TabOrder = 1
        end
        object EDQtde: TDBEdit
          Left = 168
          Top = 240
          Width = 251
          Height = 21
          DataField = 'DOA_QTDE'
          DataSource = DataSourcePadrao
          TabOrder = 2
        end
        object EDStatus: TDBEdit
          Left = 168
          Top = 280
          Width = 17
          Height = 21
          DataField = 'DOA_STATUS'
          DataSource = DataSourcePadrao
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 168
          Top = 320
          Width = 134
          Height = 21
          DataField = 'PES_ID'
          TabOrder = 4
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
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM BS_DOACAO')
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
  end
end
