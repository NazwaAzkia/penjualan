unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule4 = class(TDataModule)
    ZConnection1: TZConnection;
    Zkategori: TZQuery;
    DataSource1: TDataSource;
    Zsatuan: TZQuery;
    dssatuan: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

uses
  Unit3, Unit5;

{$R *.dfm}

end.
