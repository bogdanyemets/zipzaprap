unit slider;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tslide = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure blim(value:byte);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  slide: Tslide;
  kf:byte;

implementation

{$R *.dfm}

procedure Tslide.FormCreate(Sender: TObject);
begin
kf:=0;
end;

procedure Tslide.Timer1Timer(Sender: TObject);
begin
blim(kf);
kf:=kf+3;
end;

procedure Tslide.blim(value:byte);
var
bmp1, bmp2: TBitMap;
Blend: TBlendFunction;
begin
bmp1 := TBitMap.Create;
bmp2 := TBitMap.Create;



bmp1.LoadFromFile('photos\1.bmp');
bmp2.LoadFromFile('photos\2.bmp');
bmp1.Width:=image2.Width;
bmp1.Height:=image2.Height;
bmp2.Width:=image3.Width;
bmp2.Height:=image3.Height;

bmp1.PixelFormat := pf32bit;
bmp2.PixelFormat := pf32bit;
Blend.BlendOp := AC_SRC_OVER;
Blend.BlendFlags := 0;
Blend.SourceConstantAlpha := value;
Blend.AlphaFormat := AC_SRC_ALPHA;
if Windows.AlphaBlend(bmp1.Canvas.Handle, 0, 0, bmp1.Width, bmp1.Height, bmp2.Canvas.Handle, 0, 0, bmp2.Width, bmp2.Height, Blend) then
image1.Canvas.Draw(0, 0, bmp1)

else begin
 ShowMessage(IntToStr(GetLastError));
 timer1.Enabled:=false;
end;
 bmp1.Free;
bmp2.Free;
end;

end.
