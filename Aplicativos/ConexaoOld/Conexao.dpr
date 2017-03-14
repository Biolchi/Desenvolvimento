program Conexao;

uses
  Vcl.Forms,
  uConexao in 'uConexao.pas' {frConexao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrConexao, frConexao);
  Application.Run;
end.
