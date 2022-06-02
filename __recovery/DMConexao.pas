unit DMConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DbxSqlite, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, Data.Win.ADODB, FireDAC.Comp.Client, Data.SqlExpr;

type
  TConexao = class(TDataModule)
    ADOConnection: TADOConnection;
    ADOQueryTmp: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Conexao: TConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
