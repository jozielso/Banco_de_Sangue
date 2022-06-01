unit uCadastroPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls, System.DateUtils, StrUtils;

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
    EDId: TDBEdit;
    Label2: TLabel;
    EDNomePessoa: TDBEdit;
    Label3: TLabel;
    EDNascimento: TDBEdit;
    Label4: TLabel;
    EDTipoSanguineo: TDBEdit;
    Label5: TLabel;
    EDEmail: TDBEdit;
    Label6: TLabel;
    EDCelular: TDBEdit;
    Label7: TLabel;
    EDCpf: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure pValidacao();
  public
    { Public declarations }
  end;

var
  fCadastroPessoa: TfCadastroPessoa;

implementation

{$R *.dfm}

uses DMConexao;

procedure TfCadastroPessoa.btnSalvarClick(Sender: TObject);
begin
  pValidacao();
  inherited;
end;

procedure TfCadastroPessoa.FormShow(Sender: TObject);
begin
  inherited;
  ADOQueryPessoa.Close;
  ADOQueryPessoa.Open;
end;

procedure TfCadastroPessoa.pValidacao;
    var
      Idade: integer;
      Nascimento : String;
    const
      TipoSanquineo : Array[0..5] of String = ('A+', 'A-', 'B+', 'B-', 'O+', 'O-');
begin
    //Valida��o da idade.
    Nascimento := EDNascimento.Text;
    Idade := YearsBetween(Date, StrToDate(Nascimento));
    if ((Idade < 18) or (Idade > 60))  then
    begin
        ShowMessage( 'Idade n�o permitida! '+ IntToStr(Idade) + ' Anos');
        Abort;
    end;

    //Valida��o do Tipo Sangu�neo
    if not MatchStr(EDTipoSanguineo.Text, TipoSanquineo) then
    begin
       ShowMessage( 'Tipo Sangu�neo inv�lido! '+ EDTipoSanguineo.Text);
        Abort;
    end;

end;

end.
