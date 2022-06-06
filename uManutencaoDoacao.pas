unit uManutencaoDoacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

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
    EDData: TDBEdit;
    Label3: TLabel;
    EDQtde: TDBEdit;
    Label4: TLabel;
    EDStatus: TDBEdit;
    Label5: TLabel;
    EDPessoa: TDBEdit;
    BitBtnBuscarPessoa: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtnBuscarPessoaClick(Sender: TObject);
    procedure BitBtnBuscarPessoaExit(Sender: TObject);
  private
    { Private declarations }
    procedure ValidaDocacao();
  public
    { Public declarations }
    vIdPessoaPesquisa : Integer;

  end;

var
  fManutencaoDoacao: TfManutencaoDoacao;

implementation

{$R *.dfm}

uses DMConexao, uPesquisaPessoa;

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

procedure TfManutencaoDoacao.FormShow(Sender: TObject);
begin
  inherited;
  ADOQueryDoacao.Close;
  ADOQueryDoacao.Open;
end;

procedure TfManutencaoDoacao.ValidaDocacao;
begin
  if (Length(EDPessoa.Text) < 1) then
  begin
    ShowMessage('O id da pessoa n�o pode ser em branco! ');
    EDPessoa.SetFocus;
  end;

  if (Length(EDData.Text) < 1) then
  begin
    ShowMessage('A data da doa��o n�o pode ser em branco! ');
    EDData.SetFocus;
  end;

  if (Length(EDQtde.Text) < 1) then
  begin
    ShowMessage('A quantidade da da doa��o n�o pode ser em branco! ');
    EDQtde.SetFocus;
  end;

end;

end.
