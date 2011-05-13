unit MathSolver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    tme: TTimer;
    tme2: TTimer;
    odl: TOpenDialog;
    sdl: TSaveDialog;
    Open: TButton;
    Save: TButton;
    lbl: TLabel;
    procedure tmeTimer(Sender: TObject);
    procedure tme2Timer(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure onenter(sender: tobject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  f,ff:textfile;
implementation
 uses DIMINI,BSoD;
{$R *.dfm}

 procedure TForm2.OpenClick(Sender: TObject); //Выбор исходного файла
begin
 lbl.Caption:='Hi, moron!'; //Скрытая диалогом надпись для идиотов
 if odl.execute then
   assignfile(F,odl.FileName);
 lbl.Caption:='';
end;

procedure TForm2.SaveClick(Sender: TObject);
var
 x,i,p:integer;
 a:real;
 s:string;
begin
 lbl.Width:=260; //Скрытая диалогом надпись для идиотов
 lbl.Caption:='By clicking OK, you agree to the irrevocable publication of your confidential information Dimini Inc., transfer money from your personal account to Dimini Inc., convey a right to your soul Dimini Inc., and plead an absolute moron.';
 if sdl.execute then  //Выбор файла для сохранения
  begin
   assignfile(ff,sdl.FileName);
   reset(f);
   readln(f,x);//Считывание числа примеров
   rewrite(ff);
   for i := 1 to x do //Выполнение подсчета столько раз, сколько примеров
    begin
     p:=0;
     readln(f,s);
     p:=pos('*',s); //Определение наличия умножения в примере
     if p>0 then //Если * есть, то умножение
      begin
       a:=strtofloat(copy(s,1,pos('*',s)-1))*strtofloat(copy(s,pos('*',s)+1,length(s)));
       writeln(ff,s,'=',floattostr(a));
      end
     else //Если нет, то поиск деления
      begin
       p:=pos('/',s);
       if p>0 then  //Если есть /, то деление
        begin
         if strtofloat(copy(s,pos('/',s)+1,length(s)))=0 then //Если деление на ноль, то ошибка
          writeln(ff,s,'=Error! Divide by zero!')
         else
          begin
           a:=strtofloat(copy(s,1,pos('/',s)-1))/strtofloat(copy(s,pos('/',s)+1,length(s)));
           writeln(ff,s,'=',floattostr(a));
          end;
        end
       else//Если нет, то поиск сложения
        Begin
         p:=pos('+',s);
         if p>0 then//Если есть +, то сложение
         begin
          a:=strtofloat(copy(s,1,pos('+',s)-1))+strtofloat(copy(s,pos('+',s)+1,length(s)));
          writeln(ff,s,'=',floattostr(a));
         end
         else//Если нет, вычитание
          begin
           p:=pos('-',s);
           a:=strtofloat(copy(s,1,pos('-',s)-1))-strtofloat(copy(s,pos('-',s)+1,length(s)));
           writeln(ff,s,'=',floattostr(a));
          end;
         End;
      end;
    end;
    closefile(f);
    closefile(ff);
  end;
  lbl.Caption:='';//Очистка скрытого сообщения
end;

procedure TForm2.tme2Timer(Sender: TObject); //Появление формы
begin
 form2.Show;
 tme2.Enabled:=false;
 lbl.Height:=50;
 lbl.Width:=250;
end;

procedure TForm2.tmeTimer(Sender: TObject);  //Скрытие формы, появление формы Димини
begin
  form3.Show;
  form2.Hide;
  tme.Enabled:=false;
end;

procedure tform2.onenter(sender:tobject);
begin
  form5.Show;
end;

end.
