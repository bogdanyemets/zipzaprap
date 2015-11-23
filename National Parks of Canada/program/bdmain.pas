unit bdmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls, DBCtrls, Mask,
  jpeg;

type
  TfrmDatabase = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button2: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    edFindLocation: TEdit;
    edFindEstablishing: TEdit;
    edFindName: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure edFindNameChange(Sender: TObject);
    procedure edFindLocationChange(Sender: TObject);
    procedure edFindEstablishingChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatabase: TfrmDatabase;
  //DataModuleParks: TDataModuleParks;

implementation

uses dmp;

{$R *.dfm}

procedure TfrmDatabase.DBEdit1Change(Sender: TObject);
begin
  image1.Visible:=true;
  if DBEdit1.Text<>'' then
    image1.Picture.LoadFromFile(extractfilepath(paramstr(0))+'database\photos\'+DBEdit1.Text+'.jpg')
  else
    image1.Visible:=false;
end;

procedure TfrmDatabase.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  image1.Visible:=true;
  if DBEdit1.Text<>'' then
    image1.Picture.LoadFromFile(extractfilepath(paramstr(0))+'database\photos\'+DBEdit1.Text+'.jpg')
  else
    image1.Visible:=false;
end;

procedure TfrmDatabase.edFindEstablishingChange(Sender: TObject);
begin
DataModuleParks.FindQuery.Active:=False;
DataModuleParks.FindQuery.SQL.Clear;
DataModuleParks.FindQuery.SQL.Add('SELECT *');
DataModuleParks.FindQuery.SQL.Add('FROM Parks');
DataModuleParks.FindQuery.SQL.Add('WHERE Established LIKE ''%'+edFindEstablishing.Text+'%''');
DataModuleParks.FindQuery.Active:=true;
end;

procedure TfrmDatabase.edFindLocationChange(Sender: TObject);
begin
DataModuleParks.FindQuery.Active:=False;
DataModuleParks.FindQuery.SQL.Clear;
DataModuleParks.FindQuery.SQL.Add('SELECT *');
DataModuleParks.FindQuery.SQL.Add('FROM Parks');
DataModuleParks.FindQuery.SQL.Add('WHERE Location LIKE ''%'+edFindLocation.Text+'%''');
DataModuleParks.FindQuery.Active:=true;
end;

procedure TfrmDatabase.edFindNameChange(Sender: TObject);
begin
DataModuleParks.FindQuery.Active:=False;
DataModuleParks.FindQuery.SQL.Clear;
DataModuleParks.FindQuery.SQL.Add('SELECT *');
DataModuleParks.FindQuery.SQL.Add('FROM Parks');
DataModuleParks.FindQuery.SQL.Add('WHERE Name LIKE ''%'+edFindName.Text+'%''');
DataModuleParks.FindQuery.Active:=true;
end;

procedure TfrmDatabase.FormCreate(Sender: TObject);
begin
edFindLocation.Enabled:=false;
edFindEstablishing.Enabled:=false;
end;

procedure TfrmDatabase.RadioButton1Click(Sender: TObject);
begin
edFindName.Enabled:=true;
edFindLocation.Enabled:=false;
edFindEstablishing.Enabled:=false;
end;

procedure TfrmDatabase.RadioButton2Click(Sender: TObject);
begin
edFindLocation.Enabled:=true;
edFindName.Enabled:=false;
edFindEstablishing.Enabled:=false;
end;

procedure TfrmDatabase.RadioButton3Click(Sender: TObject);
begin
edFindEstablishing.Enabled:=true;
edFindLocation.Enabled:=false;
edFindName.Enabled:=false;
end;

procedure TfrmDatabase.Button1Click(Sender: TObject);
begin
if DataModuleParks.ParksTable.Modified then
    DataModuleParks.ParksTable.Post;
end;

procedure TfrmDatabase.Button2Click(Sender: TObject);
begin
if application.MessageBox('Are you really sure to delete this item'+'?','Attention!',MB_OKCANCEL)=id_Ok then
DataModuleParks.ParksTable.Delete;
end;

end.