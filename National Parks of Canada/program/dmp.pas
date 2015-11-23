unit dmp;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModuleParks = class(TDataModule)
    ParksTable: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    FindQuery: TADOQuery;
    FindSourse: TDataSource;
    FindQueryKey1: TAutoIncField;
    FindQueryName: TWideStringField;
    FindQueryAreasqkm: TIntegerField;
    FindQueryLocation: TWideStringField;
    FindQueryEstablished: TIntegerField;
    ParksTableKey1: TAutoIncField;
    ParksTableName: TWideStringField;
    ParksTableAreasqkm: TIntegerField;
    ParksTableLocation: TWideStringField;
    ParksTableEstablished: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleParks: TDataModuleParks;

implementation

{$R *.dfm}

end.
