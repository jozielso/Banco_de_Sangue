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
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses DMConexao;

end.
