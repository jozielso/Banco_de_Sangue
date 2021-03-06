unit uCadastroPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls, System.DateUtils, StrUtils, Vcl.WinXPickers;

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
    Label4: TLabel;
    EDTipoSanguineo: TDBEdit;
    Label5: TLabel;
    EDEmail: TDBEdit;
    Label6: TLabel;
    EDCelular: TDBEdit;
    Label7: TLabel;
    EDCpf: TDBEdit;
    ADOQueryTmp: TADOQuery;
    DTPNascimento: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EDNomePessoaExit(Sender: TObject);
    procedure EDNascimentoExit(Sender: TObject);
    procedure EDTipoSanguineoExit(Sender: TObject);
    procedure EDEmailExit(Sender: TObject);
    procedure EDCelularExit(Sender: TObject);
    procedure EDCpfExit(Sender: TObject);
    procedure ADOQueryPessoaBeforeEdit(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
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

procedure TfCadastroPessoa.ADOQueryPessoaBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if ADOQueryPessoa.State  in [dsEdit] then
  begin
    DTPNascimento.Date :=  ADOQueryPessoaPES_DATANASC.Value;
  end;
end;

procedure TfCadastroPessoa.btnAlterarClick(Sender: TObject);
begin
  inherited;
  DTPNascimento.DateTime := ADOQueryPessoaPES_DATANASC.Value;
end;

procedure TfCadastroPessoa.btnSalvarClick(Sender: TObject);
begin
  ADOQueryPessoaPES_DATANASC.Value := StrToDate(FormatDateTime('dd/mm/yyyy', DTPNascimento.Date));
  pValidacao();
  inherited;
end;


procedure TfCadastroPessoa.EDCelularExit(Sender: TObject);
begin
  inherited;
  if (Length(EDCelular.Text) < 1) then
  begin
    ShowMessage('O celular n?o pode ser em branco! ');
    EDCelular.SetFocus;
  end;
end;

procedure TfCadastroPessoa.EDCpfExit(Sender: TObject);
begin
  inherited;
  if (Length(EDCpf.Text) < 1) then
  begin
    ShowMessage('O CPF n?o pode ser em branco! ');
    EDCpf.SetFocus;
  end;
end;

procedure TfCadastroPessoa.EDEmailExit(Sender: TObject);
begin
  inherited;
  if (Length(EDEmail.Text) < 1) then
  begin
    ShowMessage('O e-mail n?o pode ser em branco! ');
    EDEmail.SetFocus;
  end;
end;

procedure TfCadastroPessoa.EDNascimentoExit(Sender: TObject);
begin
  inherited;
{  if (Length(EDNascimento.Text) < 1) then
  begin
    ShowMessage('A data de nascimento n?o pode ser em branco! ');
    EDNascimento.SetFocus;
  end;
  }
end;

procedure TfCadastroPessoa.EDNomePessoaExit(Sender: TObject);
begin
  inherited;
  if (Length(EDNomePessoa.Text) < 1) then
  begin
    ShowMessage('O nome n?o pode ser em branco! ');
    EDNomePessoa.SetFocus;
  end;
end;

procedure TfCadastroPessoa.EDTipoSanguineoExit(Sender: TObject);
begin
  inherited;
  if (Length(EDTipoSanguineo.Text) < 1) then
  begin
    ShowMessage('O tipo sangu?neo n?o pode ser em branco! ');
    EDTipoSanguineo.SetFocus;
  end;
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

    //Valida??o de Nomes somente com mais de 5 caracteres
    if (Length(EDNomePessoa.Text) <= 5) then
    begin
       ShowMessage( ' O Nome de pessoa deve possuir mais de 5 caractere ! O nome '+ EDNomePessoa.Text + ' Possui apenas ' +  IntToStr(Length(EDNomePessoa.Text)) + ' Caractere(s) ! ' );
        Abort;
        EDNomePessoa.SetFocus;
    end;

    //Valida??o da idade.
    Nascimento := DateToStr(DTPNascimento.Date); // EDNascimento.Text;
    Idade := YearsBetween(Date, StrToDate(Nascimento));
    if ((Idade < 18) or (Idade > 60) or (Length(DateToStr(DTPNascimento.Date)) < 1))  then
    begin
        ShowMessage( 'Idade n?o permitida! '+ IntToStr(Idade) + ' Ano(s)');
        Abort;
    end;

    //Valida??o do Tipo Sangu?neo
    if not (MatchStr(EDTipoSanguineo.Text, TipoSanquineo) or (Length(EDTipoSanguineo.Text) < 1)) then
    begin
       ShowMessage( 'Tipo Sangu?neo inv?lido! '+ EDTipoSanguineo.Text);
        Abort;
        EDTipoSanguineo.SetFocus;
    end;



    //Valida??o de Pessoa com mesmo nome e data de nascimento
      ADOQueryTmp.close;
      ADOQueryTmp.SQL.Text := 'SELECT * FROM BS_PESSOA (NOLOCK) WHERE PES_NOME = ''' + EDNomePessoa.Text + ''' AND PES_DATANASC = ''' + FormatDateTime('mm/dd/yyyy', DTPNascimento.Date) + ''' ' ;
      ADOQueryTmp.OPen;
      try
         if ADOQueryTmp.fieldByName('PES_ID').AsInteger > 0 then
         begin
            ShowMessage( ' Esse registro j? existe no banco de dados! '+ EDNomePessoa.Text );
            Abort;
            EDNomePessoa.SetFocus;
         end;
      finally
         ADOQueryTmp.Close;

end;

end;

end.
