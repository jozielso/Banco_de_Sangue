object fCadastroPadrao: TfCadastroPadrao
  Left = 0
  Top = 0
  Caption = 'fCadastroPadrao'
  ClientHeight = 478
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    Left = 0
    Top = 424
    Width = 737
    Height = 54
    Align = alBottom
    TabOrder = 0
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
    Width = 737
    Height = 424
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 88
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
end