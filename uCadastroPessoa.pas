unit uCadastroPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfCadastroPessoa = class(TfCadastroPadrao)
    ADOQueryPessoa: TADOQuery;
    ADOQueryPessoaPES_ID: TAutoIncField;
    ADOQueryPessoaPES_NOME: TStringField;
    ADOQueryPessoaPES_DATANASC: TDateTimeField;
    ADOQueryPessoaPES_TIPOSANG: TStringField;
    ADOQueryPessoaPES_EMAIL: TStringField;
    ADOQueryPessoaPES_CELULAR: TStringField;
    ADOQueryPessoaPES_CPF: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroPessoa: TfCadastroPessoa;

implementation

{$R *.dfm}

uses DMConexao;

procedure TfCadastroPessoa.FormShow(Sender: TObject);
begin
  inherited;
  ADOQueryPessoa.Close;
  ADOQueryPessoa.Open;
end;

end.
