unit teor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, jpeg, ExtCtrls, ComCtrls, pngimage, StdCtrls,
  Buttons;

type
  TfrmTeory = class(TForm)
    Image1: TImage;
    WebBrowser1: TWebBrowser;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure WebBrowser1CommandStateChange(ASender: TObject; Command: Integer;
      Enable: WordBool);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeory: TfrmTeory;

implementation

uses menu, map;

{$R *.dfm}


procedure TfrmTeory.BitBtn1Click(Sender: TObject);
begin
WebBrowser1.GoBack;
end;

procedure TfrmTeory.BitBtn2Click(Sender: TObject);
begin
WebBrowser1.GoForward;
end;


procedure TfrmTeory.FormActivate(Sender: TObject);
begin
frmMap.Enabled:=false;
end;

procedure TfrmTeory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmMap.Enabled:=true;
end;

procedure TfrmTeory.WebBrowser1CommandStateChange(ASender: TObject;
  Command: Integer; Enable: WordBool);
begin
case Command of
     CSC_NAVIGATEBACK: BitBtn1.Enabled := Enable;
     CSC_NAVIGATEFORWARD: BitBtn2.Enabled := Enable;
end;
end;

end.
