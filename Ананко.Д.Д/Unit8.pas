unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, acPNG, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TForm8 = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Image1: TImage;
    Image4: TImage;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Image3: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit12;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
Form12.WebBrowser1.navigate(extractfilepath(paramstr(0))+'��������.htm');
form12.show;
end;

end.
