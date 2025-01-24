unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    RadioGroup2: TRadioGroup;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Image3: TImage;
    RadioGroup1: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  f: text;
s: string;
Nvern, ball, totalQuestions: integer;


implementation

{$R *.dfm}

uses Unit2;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
close;
end;
procedure TForm4.Button1Click(Sender: TObject);



begin
if (RadioGroup2.ItemIndex > -1) and (not Eof(f)) then
  begin
    totalQuestions := totalQuestions + 1; // ����������� ����� ���������� ��������
    // ���� ��������� ������� ������������� ������ ������� ������, �� ���� ������������
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
      Label1.Caption := '�����!';
    end
    else
    begin
      Label1.Caption := '�������';
    end;
    RadioGroup2.Items.Clear; // ��������� ���� ��� ���������� �������
    repeat
      if (s[1] = '-') then
      begin
        delete(s, 1, 1);
        RadioGroup2.Caption := s;
      end
      else if s[1] = '*' then
      begin
        delete(s, 1, 1);
        Nvern := StrToInt(s);
      end
      else
        RadioGroup2.Items.Add(s);
      readln(f, s);
    until (s[1] = '-') or Eof(f);
  end
  // ���� ����� ����� ���������, ������ ������� �����������
  else if Eof(f) then
  begin
    delete(s, 1, 1);
    Nvern := StrToInt(s);
    totalQuestions := totalQuestions + 1; // ����������� ����� ���������� ��������
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
      Label1.Caption := '�����!';
    end
    else
    begin
      Label1.Caption := '�������';
    end;
    // ��������� ������� ���������� �������
    Label1.Caption := Label1.Caption + Format('. ��� ���������: %d%% ���������� �������', [Round(ball / totalQuestions * 100)]);
    CloseFile(f);
    button1.Enabled:=false;
  end;
end;


procedure TForm4.RadioGroup1Click(Sender: TObject);
begin
RadioGroup1.Enabled:=false; //����� �������� ���������� ����������
RadioGroup2.Enabled:=true; //��������� ���������� ���� � ��������
Button1.Enabled:=true; //������ �����
case RadioGroup1.ItemIndex of //� ����������� �� ���������� �������� ���������� f
0: AssignFile( f , extractfilepath(paramstr(0))+'variant1.txt');//����������� � ������� �������
1: AssignFile( f ,extractfilepath(paramstr(0))+'variant2.txt');
end;
reset(f); //��������� ���� ��� ������
readln(f,s); //��������� ������ ������ �� �����
ball:=0; //���������� ���������� ������ 0
repeat
if (s[1]='-') then begin //���� ������ ������ ������ �-� ������ ��� ������
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin
 //���� ���� ������ �*� ������ ��� ����� ������� ������
delete(s,1,1);
//RadioGroup2.Items.Add(s);
Nvern:=strtoint(s);
end

else RadioGroup2.Items.Add(s); //����� ��� ������� ������
readln(f,s); //��������� ��������� ������ �� �����
until (s[1]='-') or (Eof(f));
end;

end.
end;



end.


