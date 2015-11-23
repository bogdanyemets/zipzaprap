unit galery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    Image2: TImage;
    procedure blim(value:byte);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  m:byte;
  val:byte;

implementation

{$R *.dfm}

procedure TForm3.blim(value:byte);
var
bmp1, bmp2: TBitMap;
Blend: TBlendFunction;
begin
bmp1 := TBitMap.Create;
bmp2 := TBitMap.Create;
bmp1.LoadFromFile('photos\'+inttostr(m+1)+'.bmp');
bmp2.LoadFromFile('photos\'+inttostr(m)+'.bmp');
bmp1.Height:=image2.Height;
bmp1.Width:=image2.Width;
bmp2.Height:=image2.Height;
bmp2.Width:=image2.Width;
bmp1.PixelFormat := pf32bit;
bmp2.PixelFormat := pf32bit;
Blend.BlendOp := AC_SRC_OVER;
Blend.BlendFlags := 1;
Blend.SourceConstantAlpha := value;
Blend.AlphaFormat := AC_SRC_ALPHA;
if Windows.AlphaBlend(bmp1.Canvas.Handle, 0, 0, bmp1.Width, bmp1.Height, bmp2.Canvas.Handle, 0, 0, bmp2.Width, bmp2.Height, Blend) then
image1.Canvas.Draw(0, 0, bmp1)
else ShowMessage(IntToStr(GetLastError));
bmp1.Free;
bmp2.Free;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
val:=0;
timer1.Enabled:=true;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
m:=1;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
if val<250 then
begin
  val:=val+5;
  blim(val);
  label1.Caption:=inttostr(val);
end else
timer1.Enabled:=false;
end;

end.
