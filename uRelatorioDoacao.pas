unit uRelatorioDoacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  Vcl.ExtCtrls, Vcl.StdCtrls, ppBands, ppCtrls, ppPrnabl, ppCache,
  ppDesignLayer, ppParameter, ppStrtch, ppRegion;

type
  TfRelatorioDoacao = class(TForm)
    ppRRelDoacao: TppReport;
    ppDBPLRelDoacao: TppDBPipeline;
    DataSourceRelDoacao: TDataSource;
    DBGridRelDoacao: TDBGrid;
    ADOQueryRelDoacao: TADOQuery;
    PanelCabecalho: TPanel;
    PanelDetalhe: TPanel;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    btnImprimir: TButton;
    ppRegion1: TppRegion;
    ppRegion2: TppRegion;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppRegion3: TppRegion;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorioDoacao: TfRelatorioDoacao;

implementation

{$R *.dfm}

uses DMConexao;

procedure TfRelatorioDoacao.btnImprimirClick(Sender: TObject);
begin
  ppRRelDoacao.Print;
end;

procedure TfRelatorioDoacao.FormShow(Sender: TObject);
begin
  ADOQueryRelDoacao.Close;
  ADOQueryRelDoacao.Open;
end;

end.
