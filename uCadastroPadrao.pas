unit uCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfCadastroPadrao = class(TForm)
    PanelBotoes: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    PanelPrincipal: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroPadrao: TfCadastroPadrao;

implementation

{$R *.dfm}

end.