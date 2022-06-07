unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mSistema: TMenuItem;
    smSair: TMenuItem;
    mArquivo: TMenuItem;
    smPessoa: TMenuItem;
    mProcesso: TMenuItem;
    smDoacao: TMenuItem;
    mRelatorio: TMenuItem;
    smrDoacao: TMenuItem;
    procedure smPessoaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure smSairClick(Sender: TObject);
    procedure smDoacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses DMConexao, uCadastroPessoa, uManutencaoDoacao;

procedure TfPrincipal.FormShow(Sender: TObject);
begin
  DMConexao.Conexao.ADOConnection.Open;
end;

procedure TfPrincipal.smDoacaoClick(Sender: TObject);
begin
  if TfManutencaoDoacao(Application.FindComponent('fManutencaoDoacao')) = nil then
     fManutencaoDoacao := TfManutencaoDoacao.Create(Application);
     fManutencaoDoacao.ShowModal;
     FreeAndNil(fManutencaoDoacao);
end;

procedure TfPrincipal.smPessoaClick(Sender: TObject);
begin
    if TfCadastroPessoa(Application.FindComponent('fCadastroPessoa')) = nil then
     fCadastroPessoa := TfCadastroPessoa.Create(Application);
     fCadastroPessoa.ShowModal;
     FreeAndNil(fCadastroPessoa);
end;

procedure TfPrincipal.smSairClick(Sender: TObject);
begin
  Close;
end;

end.
