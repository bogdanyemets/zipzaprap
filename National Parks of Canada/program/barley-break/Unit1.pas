unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N5: TMenuItem;
    N4: TMenuItem;
    N0: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Showpicture1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;
var fishka:array [1..16] of Timage;
q:array [1..16] of integer;
x,y,k,i,j:integer;
st:string;
hid_lin,hid_col,lin,col,index,hid_ind_fish,tmp,ind_fish:integer;
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
panel1.Width:=385;
panel1.Height:=385;

for i:=1  to 16 do
q[i]:=i;
for i:=1 to 16 do
begin
x:=i+random(17-i);
y:=q[x];
q[x]:=q[i];
q[i]:=y;
end;

for i:=1 to 4 do
for j:=1 to 4 do
begin
k:=(i-1)*4+j;
fishka[k]:=Timage.Create(self);
fishka[k].Parent:=panel1;
fishka[k].Proportional:=true;
fishka[k].Stretch:=true;
fishka[k].Width:=96;
fishka[k].Left:=(j-1)*96+5;
fishka[k].Top :=(i-1)*96+5;
fishka[k].Height :=96;


fishka[k].picture.LoadFromFile(extractfilepath(paramstr(0))+'photos\1\'+inttostr(q[k])+'.bmp');
fishka[k].OnClick:=image1Click;
if q[k]=16 then
begin
fishka[k].Visible:=false;
hid_lin:=i;
hid_col:=j;
end;
end;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
 for i:=1 to 16 do
//if fishka[i].Focused=true then index:=i;
if fishka[i]=sender then index:=i;

lin:=(Index-1)div 4+1;
col:=Index-(lin-1)*4;
If (lin=hid_lin) Then
If Abs(col-hid_col)=1 Then
begin
hid_ind_fish:=(hid_lin-1)*4+hid_col;
fishka[Index].Visible:=False;
fishka[hid_ind_fish].Visible:=True;
tmp:=lin;
lin:=hid_lin;
hid_lin:=tmp;
tmp:=col;
col:=hid_col;
hid_col:=tmp;
fishka[hid_ind_fish].picture:=fishka[Index].picture;
End;

If col=hid_col Then
If Abs(lin-hid_lin)=1 Then
begin
ind_fish:=(lin-1)*4+col ;
hid_ind_fish:=(hid_lin-1)*4+hid_col;
fishka[Index].Visible:=False;
fishka[hid_ind_fish].Visible:=True;
tmp:=lin;
lin:=hid_lin;
hid_lin:=tmp;
tmp:=col;
col:=hid_col;
hid_col:=tmp;
fishka[hid_ind_fish].picture:=fishka[Index].picture ;
End;

end;


procedure TForm1.N1Click(Sender: TObject);
begin
for i:=1  to 16 do
q[i]:=i;
for i:=1 to 16 do
begin
x:=i+random(17-i);
y:=q[x];
q[x]:=q[i];
q[i]:=y;
end;
for i:=1 to 4 do
for j:=1 to 4 do
begin
k:=(i-1)*4+j;
st:=extractfilepath(paramstr(0))+'photos\1\'+inttostr(q[k])+'.bmp';
fishka[k].picture.loadfromfile(st);
if q[k]=16 then
begin
fishka[k].Visible :=false;
hid_lin := i;
hid_col := j;
end
else fishka[k].Visible :=true;
end;
form2.Image2.Picture.LoadFromFile(extractfilepath(paramstr(0))+'photos\1\_.jpg');
end;

procedure TForm1.N5Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Showpicture1Click(Sender: TObject);
begin
  form2.show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
for i:=1  to 16 do
q[i]:=i;
for i:=1 to 16 do
begin
x:=i+random(17-i);
y:=q[x];
q[x]:=q[i];
q[i]:=y;
end;
for i:=1 to 4 do
for j:=1 to 4 do
begin
k:=(i-1)*4+j;
st:='��������\'+inttostr(q[k])+'.jpg';
fishka[k].picture.loadfromfile(st);
if q[k]=16 then
begin
fishka[k].Visible :=false;
hid_lin := i;
hid_col := j;
end
else fishka[k].Visible :=true;
end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
for i:=1  to 16 do
q[i]:=i;
for i:=1 to 16 do
begin
x:=i+random(17-i);
y:=q[x];
q[x]:=q[i];
q[i]:=y;
end;
for i:=1 to 4 do
for j:=1 to 4 do
begin
k:=(i-1)*4+j;
st:=extractfilepath(paramstr(0))+'photos\2\'+inttostr(q[k])+'.jpg';
fishka[k].picture.loadfromfile(st);
if q[k]=16 then
begin
fishka[k].Visible :=false;
hid_lin := i;
hid_col := j;
end
else fishka[k].Visible :=true;
end;
form2.Image2.Picture.LoadFromFile(extractfilepath(paramstr(0))+'photos\2\_.jpg');
end;

procedure TForm1.N3Click(Sender: TObject);
begin
for i:=1  to 16 do
q[i]:=i;
for i:=1 to 16 do
begin
x:=i+random(17-i);
y:=q[x];
q[x]:=q[i];
q[i]:=y;
end;
for i:=1 to 4 do
for j:=1 to 4 do
begin
k:=(i-1)*4+j;
st:=extractfilepath(paramstr(0))+'photos\3\'+inttostr(q[k])+'.jpg';
fishka[k].picture.loadfromfile(st);
if q[k]=16 then
begin
fishka[k].Visible :=false;
hid_lin := i;
hid_col := j;
end
else fishka[k].Visible :=true;
end;
form2.Image2.Picture.LoadFromFile(extractfilepath(paramstr(0))+'photos\3\_.jpg');
end;

end.