unit uManutencaoDoacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, System.DateUtils;

type
  TfManutencaoDoacao = class(TfCadastroPadrao)
    ADOQueryDoacao: TADOQuery;
    ADOQueryDoacaoDOA_ID: TAutoIncField;
    ADOQueryDoacaoDOA_DATA: TDateTimeField;
    ADOQueryDoacaoDOA_QTDE: TBCDField;
    ADOQueryDoacaoDOA_STATUS: TStringField;
    ADOQueryDoacaoPES_ID: TIntegerField;
    Label1: TLabel;
    EDId: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    EDQtde: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    EDPessoa: TDBEdit;
    BitBtnBuscarPessoa: TBitBtn;
    DTPDoacao: TDateTimePicker;
    ADOQueryDoacaoPES_NOME: TStringField;
    DBComboBox1: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtnBuscarPessoaClick(Sender: TObject);
    procedure BitBtnBuscarPessoaExit(Sender: TObject);
    procedure ADOQueryDoacaoBeforeEdit(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure pValidaDocacao();

  public
    { Public declarations }
    vIdPessoaPesquisa : Integer;
    vNascimento : String;

  end;

var
  fManutencaoDoacao: TfManutencaoDoacao;

implementation

{$R *.dfm}

uses DMConexao, uPesquisaPessoa;

procedure TfManutencaoDoacao.ADOQueryDoacaoBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if ADOQueryDoacao.State  in [dsEdit] then
  begin
    DTPDoacao.Date :=  ADOQueryDoacaoDOA_DATA.Value;
  end;
end;

procedure TfManutencaoDoacao.BitBtnBuscarPessoaClick(Sender: TObject);
begin
  inherited;
  if TfPesquisaPessoa(Application.FindComponent('fPesquisaPessoa')) = nil then
     fPesquisaPessoa := TfPesquisaPessoa.Create(Application);
     fPesquisaPessoa.ShowModal;
     FreeAndNil(fPesquisaPessoa);
end;

procedure TfManutencaoDoacao.BitBtnBuscarPessoaExit(Sender: TObject);
begin
  inherited;
  EDPessoa.Text := IntToStr(vIdPessoaPesquisa);
end;

procedure TfManutencaoDoacao.btnAlterarClick(Sender: TObject);
begin
  inherited;
  DTPDoacao.DateTime := ADOQueryDoacaoDOA_DATA.Value;
end;

procedure TfManutencaoDoacao.btnSalvarClick(Sender: TObject);
begin
  ADOQueryDoacaoDOA_DATA.Value := StrToDate(FormatDateTime('dd/mm/yyyy', DTPDoacao.Date));
  pValidaDocacao;
  inherited;

end;

procedure TfManutencaoDoacao.FormShow(Sender: TObject);
begin
  inherited;
  ADOQueryDoacao.Close;
  ADOQueryDoacao.Open;
end;

procedure TfManutencaoDoacao.pValidaDocacao;
var
  Idade: integer;

begin
  if (Length(EDPessoa.Text) < 1) then
  begin
    ShowMessage('O id da pessoa n�o pode ser em branco! ');
    EDPessoa.SetFocus;
  end;


  if (Length(EDQtde.Text) < 1) then
  begin
    ShowMessage('A quantidade da da doa��o n�o pode ser em branco! ');
    EDQtde.SetFocus;
  end;

  if (StrToInt(EDQtde.Text) < 1) then
  begin
    ShowMessage('A quantidade deve ser maior que zero! ');
    EDQtde.SetFocus;
  end;

  //Valida��o para n�o permitir doadores maiores de 60 anos.
    Idade := YearsBetween(Date, StrToDate(vNascimento));
    if (Idade > 60) then
    begin
        ShowMessage( 'Maiores de 60 anos n�o podem doar sangue! '+ IntToStr(Idade) + ' Ano(s)');
        Abort;
    end;




end;

end.
