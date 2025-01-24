unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.ExtCtrls, sSkinManager, sButton,ShellAPI,
  Vcl.Menus;

type
  Tглавная = class(TForm)
    Image1: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    sSkinManager1: TsSkinManager;
    sButton1: TsButton;
    sButton2: TsButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  главная: Tглавная;

implementation

{$R *.dfm}

uses Unit3, Unit1, Unit4, Unit10, Unit11;

procedure Tглавная.BitBtn1Click(Sender: TObject);
begin
     form1.show;
end;

procedure Tглавная.BitBtn2Click(Sender: TObject);
begin
form3.show;
end;

procedure Tглавная.BitBtn4Click(Sender: TObject);
begin
  form11.show;
end;

procedure Tглавная.BitBtn5Click(Sender: TObject);
begin
form4.show;
end;

procedure Tглавная.N1Click(Sender: TObject);
begin
 ShellExecute(0,PChar('Open'),PChar('spravka1.chm'),nil,nil,SW_SHOW);
end;

procedure Tглавная.sButton1Click(Sender: TObject);
begin
 form10.show;
end;

procedure Tглавная.sButton2Click(Sender: TObject);
begin
close;
end;

end.
