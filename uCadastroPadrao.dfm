object fCadastroPadrao: TfCadastroPadrao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fCadastroPadrao'
  ClientHeight = 488
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    Left = 0
    Top = 434
    Width = 747
    Height = 54
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 424
    ExplicitWidth = 737
    object btnIncluir: TButton
      Left = 16
      Top = 5
      Width = 121
      Height = 41
      Caption = 'Incluir'
      TabOrder = 0
    end
    object btnAlterar: TButton
      Left = 154
      Top = 5
      Width = 121
      Height = 41
      Caption = 'Alterar'
      TabOrder = 1
    end
    object btnSalvar: TButton
      Left = 289
      Top = 5
      Width = 121
      Height = 41
      Caption = 'Salvar'
      TabOrder = 2
    end
    object btnCancelar: TButton
      Left = 440
      Top = 5
      Width = 121
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 3
    end
    object btnSair: TButton
      Left = 592
      Top = 5
      Width = 121
      Height = 41
      Caption = 'Sair'
      TabOrder = 4
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 434
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 88
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object PagePrincipal: TPageControl
      Left = 1
      Top = 1
      Width = 745
      Height = 432
      ActivePage = TabSheetGrid
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 735
      ExplicitHeight = 422
      object TabSheetGrid: TTabSheet
        Caption = 'Listagem'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 737
          Height = 404
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TabSheetCampos: TTabSheet
        ImageIndex = 1
      end
    end
  end
end
