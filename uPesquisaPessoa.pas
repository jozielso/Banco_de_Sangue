unit uPesquisaPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfPesquisaPessoa = class(TForm)
    Label1: TLabel;
    EDNomePessoa: TEdit;
    BitBtnLimpar: TBitBtn;
    BitBtnSelecionar: TBitBtn;
    DBGrid1: TDBGrid;
    ADOQueryPessoa: TADOQuery;
    DataSourcePessoa: TDataSource;
    ADOQueryPessoaPES_ID: TAutoIncField;
    ADOQueryPessoaPES_NOME: TStringField;
    ADOQueryPessoaPES_DATANASC: TDateTimeField;
    ADOQueryPessoaPES_TIPOSANG: TStringField;
    ADOQueryPessoaPES_EMAIL: TStringField;
    ADOQueryPessoaPES_CELULAR: TStringField;
    ADOQueryPessoaPES_CPF: TStringField;
    PanelCabecalho: TPanel;
    PanelDetalhe: TPanel;
    procedure BitBtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDNomePessoaChange(Sender: TObject);
    procedure BitBtnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fPesquisaPessoa: TfPesquisaPessoa;

implementation

{$R *.dfm}

uses DMConexao, uManutencaoDoacao;

procedure TfPesquisaPessoa.BitBtnLimparClick(Sender: TObject);
begin
  EDNomePessoa.Clear;
  EDNomePessoa.SetFocus;
end;

procedure TfPesquisaPessoa.BitBtnSelecionarClick(Sender: TObject);
begin
  fManutencaoDoacao.vIdPessoaPesquisa := ADOQueryPessoaPES_ID.Value;
  fManutencaoDoacao.vNascimento := DateToStr(ADOQueryPessoaPES_DATANASC.Value);
  Close;
end;

procedure TfPesquisaPessoa.EDNomePessoaChange(Sender: TObject);
begin
  ADOQueryPessoa.SQL.Clear;
  ADOQueryPessoa.SQL.Add('SELECT * FROM BS_PESSOA WHERE PES_NOME LIKE' + QuotedStr(EDNomePessoa.Text + '%'));
  ADOQueryPessoa.ExecSQL;
  ADOQueryPessoa.Open;
end;

procedure TfPesquisaPessoa.FormShow(Sender: TObject);
begin
  ADOQueryPessoa.Close;
  ADOQueryPessoa.Open;
  end;

end.
