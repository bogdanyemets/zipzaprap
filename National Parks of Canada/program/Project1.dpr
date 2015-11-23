program Project1;

uses
  Forms,
  menu in 'menu.pas' {frmMenu},
  slide in 'slide.pas' {frmSlider},
  gam in 'gam.pas' {frmGame},
  map in 'map.pas' {frmMap},
  bdmain in 'bdmain.pas' {frmDatabase},
  dmp in 'dmp.pas' {DataModuleParks: TDataModule},
  teor in 'teor.pas' {frmTeory},
  first in 'first.pas' {frmFirst},
  video in 'video.pas' {frmVideo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'National Parks of Canada';
  Application.CreateForm(TfrmFirst, frmFirst);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmMap, frmMap);
  Application.CreateForm(TfrmTeory, frmTeory);
  Application.CreateForm(TfrmGame, frmGame);
  Application.CreateForm(TfrmSlider, frmSlider);
  Application.CreateForm(TfrmDatabase, frmDatabase);
  Application.CreateForm(TDataModuleParks, DataModuleParks);
  Application.CreateForm(TfrmVideo, frmVideo);
  Application.Run;
end.
