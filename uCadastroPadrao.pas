unit uCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfCadastroPadrao = class(TForm)
    PanelBotoes: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    PanelPrincipal: TPanel;
    PagePrincipal: TPageControl;
    TabSheetGrid: TTabSheet;
    TabSheetCampos: TTabSheet;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure pComportamentoBotao(acao: string);
  public
    { Public declarations }
  end;

var
  fCadastroPadrao: TfCadastroPadrao;

implementation

{$R *.dfm}

procedure TfCadastroPadrao.FormShow(Sender: TObject);
begin
  PagePrincipal.ActivePageIndex := 0;
end;

procedure TfCadastroPadrao.pComportamentoBotao(acao: string);
begin
  btnIncluir.Enabled := ( (acao = 'S') or (acao = 'C') );
  btnAlterar.Enabled := ( (acao = 'S') or (acao = 'C') );
  btnSalvar.Enabled := ( (acao = 'I') or (acao = 'A') );
  btnCancelar.Enabled := ( (acao = 'I') or (acao = 'A') );

  if ( (acao = 'I') or (acao = 'A') ) then
  begin
    PagePrincipal.ActivePageIndex := 1;
  end;

  if ( (acao = 'S') or (acao = 'C') ) then
  begin
    PagePrincipal.ActivePageIndex := 0;
  end;
end;

end.
