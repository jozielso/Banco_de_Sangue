unit uManutencaoDoacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls;

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
    DBEdit5: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fManutencaoDoacao: TfManutencaoDoacao;

implementation

{$R *.dfm}

uses DMConexao;

procedure TfManutencaoDoacao.FormShow(Sender: TObject);
begin
  inherited;
  ADOQueryDoacao.Close;
  ADOQueryDoacao.Open;
end;

end.
