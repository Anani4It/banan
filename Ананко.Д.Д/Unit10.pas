unit Unit10;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TForm10 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    CheckBox4: TCheckBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
  sum:integer;
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
 if checkbox1.checked then
  sum := sum + strtoint(edit1.Text);

   if checkbox2.checked then
  sum := sum + strtoint(edit2.Text);

  if checkbox3.checked then
  sum := sum + strtoint(edit3.Text);

  if checkbox4.checked then
  sum := sum + strtoint(edit4.Text);

  if checkbox5.checked then
  sum := sum + strtoint(edit5.Text);

  if checkbox6.checked then
  sum := sum + strtoint(edit6.Text);

  if checkbox7.checked then
  sum := sum + strtoint(edit7.Text);

  if checkbox8.checked then
  sum := sum + strtoint(edit8.Text);

  if checkbox9.checked then
  sum := sum + strtoint(edit9.Text);

  if checkbox10.checked then
  sum := sum + strtoint(edit10.Text);

  edit11.Text := inttostr(sum);
end;



procedure TForm10.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.




