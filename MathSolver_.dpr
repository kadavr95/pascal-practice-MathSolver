program MathSolver_;

uses
  Forms,
  MathSolver in 'MathSolver.pas' {Form2},
  DIMINI in 'DIMINI.pas' {Form3},
  BSoD in 'BSoD.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
