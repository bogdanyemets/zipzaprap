unit gam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, pngimage;

type
  TfrmGame = class(TForm)
    Image1: TImage;
    Image4: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Imagel: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Image19MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image19MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image19MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image18MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image17MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image20MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image15MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image18MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image17MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image16MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image20MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image15MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image18MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image17MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image16MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image14MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Image11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure ImagelMouseEnter(Sender: TObject);
    procedure ImagelMouseLeave(Sender: TObject);
    procedure ImagelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGame: TfrmGame;
  p:byte;
  mv:boolean;
  x0,y0:integer;

implementation

uses menu;

{$R *.dfm}

procedure TfrmGame.Button1Click(Sender: TObject);
begin
label1.Caption:=inttostr(p);
if p=9 then
begin
  image8.Visible:=false;
  image10.Visible:=false;
  image2.Visible:=false;
  image4.Visible:=false;
  image6.Visible:=false;
  image9.Visible:=false;
  image7.Visible:=false;
  image3.Visible:=false;
  image5.Visible:=false;
  button1.Enabled:=false;
Showmessage('Congratulations! You are absolutely right!');
end;
end;

procedure TfrmGame.Button2Click(Sender: TObject);
begin
frmGame.Hide;
frmMenu.show;
end;

procedure TfrmGame.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
application.ProcessMessages;
end;

procedure TfrmGame.FormCreate(Sender: TObject);
begin
doublebuffered:=true;
application.ProcessMessages;
//MessageBox(Application.Handle,'Put small pictures to the right places.'+#13#10+'Good luck!'
//,'', MB_OK);
end;


procedure TfrmGame.Image11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;
end;
end;

procedure TfrmGame.Image11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=False;
end;

procedure TfrmGame.Image13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;
end;
end;

procedure TfrmGame.Image13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=false;
end;

procedure TfrmGame.Image14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image14MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;
end;
end;

procedure TfrmGame.Image14MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=false;
end;

procedure TfrmGame.Image15MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image15MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;

button1.Enabled:=true;
end;
end;

procedure TfrmGame.Image15MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=false;
end;

procedure TfrmGame.Image16MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image16MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;
end;
end;

procedure TfrmGame.Image16MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=false;
end;

procedure TfrmGame.Image17MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image17MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;
end;
end;

procedure TfrmGame.Image17MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=false;
end;

procedure TfrmGame.Image18MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image18MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;
end;
end;

procedure TfrmGame.Image18MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=false;
end;

procedure TfrmGame.Image19MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image19MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;
end;
end;

procedure TfrmGame.Image19MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=false;
end;

procedure TfrmGame.Image20MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=true;
x0:=x;
y0:=y;
end;

procedure TfrmGame.Image20MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if mv then
begin
(sender as timage).Left:=(sender as timage).Left-x0+x;
(sender as timage).Top:=(sender as timage).Top-y0+y;
end;
end;

procedure TfrmGame.Image20MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mv:=false;
end;

procedure TfrmGame.ImagelClick(Sender: TObject);
begin
frmGame.hide;
frmMenu.show;
end;

procedure TfrmGame.ImagelMouseEnter(Sender: TObject);
begin
imagel.Picture.LoadFromFile(extractfilepath(paramstr(0))+'stuff\4.png');
end;

procedure TfrmGame.ImagelMouseLeave(Sender: TObject);
begin
imagel.Picture.LoadFromFile(extractfilepath(paramstr(0))+'stuff\3.png');
end;

procedure TfrmGame.Timer1Timer(Sender: TObject);
begin
p:=0;
if (round(image11.Left+(image11.Width/2))>image8.Left) and
   (round(image11.Left+(image11.Width/2))<(image8.Left+image8.Width)) and
   (round(image11.top+(image11.Height/2))>image8.Top) and
   (round(image11.top+(image11.Height/2))<(image8.Top+image8.Height))
 then
 p:=p+1;

if (round(image19.Left+(image19.Width/2))>image4.Left) and
   (round(image19.Left+(image19.Width/2))<(image4.Left+image4.Width)) and
   (round(image19.top+(image19.Height/2))>image4.Top) and
   (round(image19.top+(image19.Height/2))<(image4.Top+image4.Height))
 then
 p:=p+1;

if (round(image20.Left+(image20.Width/2))>image10.Left) and
   (round(image20.Left+(image20.Width/2))<(image10.Left+image10.Width)) and
   (round(image20.top+(image20.Height/2))>image10.Top) and
   (round(image20.top+(image20.Height/2))<(image10.Top+image10.Height))
 then
 p:=p+1;

if (round(image15.Left+(image15.Width/2))>image2.Left) and
   (round(image15.Left+(image15.Width/2))<(image2.Left+image2.Width)) and
   (round(image15.top+(image15.Height/2))>image2.Top) and
   (round(image15.top+(image15.Height/2))<(image2.Top+image2.Height))
 then
 p:=p+1;

if (round(image18.Left+(image18.Width/2))>image6.Left) and
   (round(image18.Left+(image18.Width/2))<(image6.Left+image6.Width)) and
   (round(image18.top+(image18.Height/2))>image6.Top) and
   (round(image18.top+(image18.Height/2))<(image6.Top+image6.Height))
 then
 p:=p+1;

if (round(image17.Left+(image17.Width/2))>image9.Left) and
   (round(image17.Left+(image17.Width/2))<(image9.Left+image9.Width)) and
   (round(image17.top+(image17.Height/2))>image9.Top) and
   (round(image17.top+(image17.Height/2))<(image9.Top+image9.Height))
 then
 p:=p+1;

if (round(image13.Left+(image13.Width/2))>image5.Left) and
   (round(image13.Left+(image13.Width/2))<(image5.Left+image5.Width)) and
   (round(image13.top+(image13.Height/2))>image5.Top) and
   (round(image13.top+(image13.Height/2))<(image5.Top+image5.Height))
 then
 p:=p+1;

if (round(image14.Left+(image14.Width/2))>image7.Left) and
   (round(image14.Left+(image14.Width/2))<(image7.Left+image7.Width)) and
   (round(image14.top+(image14.Height/2))>image7.Top) and
   (round(image14.top+(image14.Height/2))<(image7.Top+image7.Height))
 then
 p:=p+1;

if (round(image16.Left+(image16.Width/2))>image3.Left) and
   (round(image16.Left+(image16.Width/2))<(image3.Left+image3.Width)) and
   (round(image16.top+(image16.Height/2))>image3.Top) and
   (round(image16.top+(image16.Height/2))<(image3.Top+image3.Height))
 then
 p:=p+1;

end;

end.
