unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, acPNG, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Image1: TImage;
    Image3: TImage;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit5, Unit6, Unit7, Unit8, Unit9;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
    Form9.show;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
   Form6.show;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  Form8.show;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
   Form7.show;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
close;
end;

end.
