program Project1;

uses
  Forms,
  barangpas in 'barangpas.pas' {Form1},
  login in 'login.pas' {Form2},
  Upengguna in 'Upengguna.pas' {Form3},
  B.masuk in 'B.masuk.pas' {Form4},
  B.keluar in 'B.keluar.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
