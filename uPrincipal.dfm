object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Banco de Sangue'
  ClientHeight = 487
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object mSistema: TMenuItem
      Caption = 'Sistema'
      object smSair: TMenuItem
        Caption = 'Sair'
        OnClick = smSairClick
      end
    end
    object mArquivo: TMenuItem
      Caption = 'Arquivo'
      object smPessoa: TMenuItem
        Caption = 'Pessoa'
        OnClick = smPessoaClick
      end
    end
    object mProcesso: TMenuItem
      Caption = 'Processo'
      object smDoacao: TMenuItem
        Caption = 'Doa'#231'ao'
        OnClick = smDoacaoClick
      end
    end
    object mRelatorio: TMenuItem
      Caption = 'Relat'#243'rio'
      object smrDoacao: TMenuItem
        Caption = 'Doa'#231#227'o'
        OnClick = smrDoacaoClick
      end
    end
  end
end
