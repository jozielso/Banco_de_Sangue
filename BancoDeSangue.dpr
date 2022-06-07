program BancoDeSangue;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fPrincipal},
  DMConexao in 'DMConexao.pas' {Conexao: TDataModule},
  uCadastroPadrao in 'uCadastroPadrao.pas' {fCadastroPadrao},
  uCadastroPessoa in 'uCadastroPessoa.pas' {fCadastroPessoa},
  uManutencaoDoacao in 'uManutencaoDoacao.pas' {fManutencaoDoacao},
  uPesquisaPessoa in 'uPesquisaPessoa.pas' {fPesquisaPessoa},
  uRelatorioDoacao in 'uRelatorioDoacao.pas' {fRelatorioDoacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TfCadastroPadrao, fCadastroPadrao);
  Application.CreateForm(TfCadastroPessoa, fCadastroPessoa);
  Application.CreateForm(TfManutencaoDoacao, fManutencaoDoacao);
  Application.CreateForm(TfPesquisaPessoa, fPesquisaPessoa);
  Application.CreateForm(TfRelatorioDoacao, fRelatorioDoacao);
  Application.Run;
end.
