unit workblend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,jpeg;

type
  Tforma = class(TForm)
    killpict: TTimer;
    Image1: TImage;
    procedure killpictTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  forma: Tforma;
  x0,y0,w0,h0:integer;
  picturn:string;
  yl:boolean;

implementation

uses slide;

{$R *.dfm}

procedure Tforma.FormHide(Sender: TObject);
begin
application.ProcessMessages;
slide.frmSlider.butleft.Enabled:=true;
slide.frmSlider.butright.Enabled:=true;

end;

procedure Tforma.FormShow(Sender: TObject);
begin
doublebuffered:=true;
forma.AlphaBlendValue:=255;
yl:=false;
forma.Left:=x0;
forma.Top:=y0;
forma.Width:=w0;
forma.Height:=h0;
image1.Left:=0;
image1.Top:=0;
image1.Width:=w0;
image1.Height:=h0;
image1.Picture.LoadFromFile(slide.prevs);
killpict.Enabled:=true;
slide.frmSlider.pict.Visible:=false;
forma.Focused;

slide.frmSlider.butleft.Enabled:=false;
slide.frmSlider.butright.Enabled:=false;


end;

procedure Tforma.killpictTimer(Sender: TObject);
begin
if not yl then
         begin
if forma.AlphaBlendValue>0 then
forma.AlphaBlendValue:=forma.AlphaBlendValue-5;
if forma.AlphaBlendValue<10 then
begin
 yl:=true;//forma.Destroy;
 forma.AlphaBlendValue:=0;
 application.ProcessMessages;
 image1.Picture.LoadFromFile(picturn);
 exit;
end;
         end;
         if yl then
         begin
         if forma.AlphaBlendValue<255 then
         forma.AlphaBlendValue:=forma.AlphaBlendValue+5;
         if forma.AlphaBlendValue>245 then
         begin
         killpict.Enabled:=false;
         forma.AlphaBlendValue:=255;
         slide.frmSlider.pict.Picture.LoadFromFile(picturn);
         slide.frmSlider.pict.Visible:=true;
         application.ProcessMessages;
         forma.Hide;
        // forma.Free;
         end;
         end;
end;

end.
