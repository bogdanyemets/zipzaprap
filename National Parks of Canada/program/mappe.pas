unit mappe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure Button3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
   rt:boolean;
   xo,yo:double;
   xof,yof:double;
   mx,my:integer;
   xb,yb:double;
implementation

{$R *.dfm}

procedure TForm2.Button2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
timer1.Enabled:=true;
end;

procedure TForm2.Button2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
timer1.Enabled:=false;
end;

procedure TForm2.Button3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
timer2.Enabled:=true;
end;

procedure TForm2.Button3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
timer2.Enabled:=false;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
//showmessage(inttostr(scrollbox1.VertScrollBar.Range ));
yo:=button1.Top/100;
xo:=button1.Left/100;
yof:=image1.Height;
xof:=image1.Width;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
application.Terminate;
end;

procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
rt:=true;
mx:=X;
my:=Y;
end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if rt then
begin
 image1.Top:=image1.Top-my+y;
 image1.Left:=image1.Left-mx+x;
 button1.Top:=button1.Top-my+y;
 button1.Left:=button1.Left-mx+x;



end;
end;

procedure TForm2.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
rt:=false;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
image1.Width:=round(xof);
image1.Height:=round(yof);
xof:=xof+xof/100;
yof:=yof+yof/100;
{xb:=xb+xo;
yb:=yb+yo;}
button1.Left:=round(xo);
button1.Top:=round(yo);
button1.Height:=button1.Height+round((button1.Height)/100);
button1.Width:=button1.Width+round((button1.Width)/100);
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
image1.Width:=image1.Width-5;
image1.Height:=image1.Height-4;
button1.Left:=button1.Left-5;
button1.Top:=button1.Top-4;
end;

end.
