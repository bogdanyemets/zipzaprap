unit moveimage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  Tmgf = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mgf: Tmgf;
  x0,y0:integer;
  dr:boolean;
implementation

{$R *.dfm}

procedure Tmgf.FormCreate(Sender: TObject);
begin
doublebuffered:=true;
end;

procedure Tmgf.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
dr:=true;
x0:=x;
y0:=y;
end;

procedure Tmgf.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if dr then
begin
image1.Top:=image1.Top-(y0-y);
image1.Left:=image1.Left-(x0-x);
end;
end;

procedure Tmgf.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
dr:=false;
end;

end.
