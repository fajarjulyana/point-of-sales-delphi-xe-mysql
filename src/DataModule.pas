unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModuleActive = class(TDataModule)
    Koneksi: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleActive: TDataModuleActive;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
