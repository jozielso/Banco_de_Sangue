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
    DataSourcePadrao: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure pComportamentoBotao(acao: string);
    procedure pComportamentoDataSource(acao: string);
  public
    { Public declarations }
  end;

var
  fCadastroPadrao: TfCadastroPadrao;

implementation

{$R *.dfm}

uses DMConexao;

procedure TfCadastroPadrao.btnAlterarClick(Sender: TObject);
begin
  pComportamentoBotao('A');
  pComportamentoDataSource('A');
end;

procedure TfCadastroPadrao.btnCancelarClick(Sender: TObject);
begin
  pComportamentoBotao('C');
  pComportamentoDataSource('C');
end;

procedure TfCadastroPadrao.btnIncluirClick(Sender: TObject);
begin
  pComportamentoBotao('I');
  pComportamentoDataSource('I');
end;

procedure TfCadastroPadrao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfCadastroPadrao.btnSalvarClick(Sender: TObject);
begin
  pComportamentoBotao('S');
  pComportamentoDataSource('S');
end;

procedure TfCadastroPadrao.FormShow(Sender: TObject);
begin
  PagePrincipal.ActivePageIndex := 0;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;
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
procedure TfCadastroPadrao.pComportamentoDataSource(acao: string);
begin
  if (acao = 'I') then
    DataSourcePadrao.DataSet.Insert;

  if (acao = 'A') then
    DataSourcePadrao.DataSet.Edit;

  if (acao = 'S') then
    DataSourcePadrao.DataSet.Post;

  if (acao = 'C') then
    DataSourcePadrao.DataSet.Cancel;
end;

end.
