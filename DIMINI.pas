unit DIMINI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    timer: TTimer;
    Timer1: TTimer;
    procedure timerTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
implementation
{$R *.dfm}



procedure TForm3.Timer1Timer(Sender: TObject);
begin
   image1.left:=round((form3.clientwidth-500)/2);     //Настройка позиции изображения и Надписи
 image1.Top:=round((form3.clientHeight-500)/2);
 label1.Top:=form3.clientheight-label1.Height;
 label1.Left:=form3.clientwidth-label1.width;
 timer1.Enabled:=false;
end;

procedure TForm3.timerTimer(Sender: TObject);
begin
     form3.hide;                                   //Скрытие окна Димини
    timer.Enabled:=false;
end;

end.
