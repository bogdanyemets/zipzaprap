unit choosegame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls;

type
  TfrmChooseGame = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    OpenDialog1: TOpenDialog;
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChooseGame: TfrmChooseGame;

implementation

uses gam, menu;

{$R *.dfm}


procedure TfrmChooseGame.FormCreate(Sender: TObject);
begin
label1.OnClick:=image1.OnClick;
label1.OnMouseEnter:=image1.OnMouseEnter;
label2.OnClick:=image2.OnClick;
label2.OnMouseEnter:=image2.OnMouseEnter;
frmMenu.enabled:=true;
end;

procedure TfrmChooseGame.Image1Click(Sender: TObject);
begin
winexec('generalprog\15\barley-break.exe',SW_NORMAL);
end;

procedure TfrmChooseGame.Image1MouseEnter(Sender: TObject);
begin
image1.Picture.LoadFromFile('generalprog\sourse\stuff\1.png');
end;

procedure TfrmChooseGame.Image1MouseLeave(Sender: TObject);
begin
image1.Picture.LoadFromFile('generalprog\sourse\stuff\2.png');
end;

procedure TfrmChooseGame.Image2Click(Sender: TObject);
begin
frmGame.show;
end;

procedure TfrmChooseGame.Image2MouseEnter(Sender: TObject);
begin
image2.Picture.LoadFromFile('generalprog\sourse\stuff\1.png');
end;

procedure TfrmChooseGame.Image2MouseLeave(Sender: TObject);
begin
image2.Picture.LoadFromFile('generalprog\sourse\stuff\2.png');
end;


end.
