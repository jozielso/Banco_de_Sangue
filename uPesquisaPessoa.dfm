object fPesquisaPessoa: TfPesquisaPessoa
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Pessoas'
  ClientHeight = 467
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCabecalho: TPanel
    Left = -2
    Top = 0
    Width = 647
    Height = 106
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 206
      Height = 23
      Caption = 'Digite o nome da Pessoa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EDNomePessoa: TEdit
      Left = 8
      Top = 53
      Width = 321
      Height = 21
      TabOrder = 0
      OnChange = EDNomePessoaChange
    end
    object BitBtnLimpar: TBitBtn
      Left = 343
      Top = 53
      Width = 98
      Height = 33
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnLimparClick
    end
    object BitBtnSelecionar: TBitBtn
      Left = 455
      Top = 53
      Width = 98
      Height = 33
      Caption = 'Selecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtnSelecionarClick
    end
  end
  object PanelDetalhe: TPanel
    Left = 2
    Top = 106
    Width = 643
    Height = 360
    Caption = 'PanelDetalhe'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 641
      Height = 358
      Align = alClient
      DataSource = DataSourcePessoa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object ADOQueryPessoa: TADOQuery
    Connection = Conexao.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM BS_PESSOA')
    Left = 320
    Top = 240
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
  object DataSourcePessoa: TDataSource
    DataSet = ADOQueryPessoa
    Left = 424
    Top = 240
  end
end
