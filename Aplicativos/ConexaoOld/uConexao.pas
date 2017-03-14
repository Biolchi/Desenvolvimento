unit uConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrConexao = class(TForm)
    FDConnection: TFDConnection;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    BitBtn1: TBitBtn;
    Button1: TButton;
    FDQuery: TFDQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FConectado: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property Conectado: Boolean read FConectado write FConectado;
    procedure Conexao(aConnect: Boolean);
  end;

var
  frConexao: TfrConexao;

implementation

{$R *.dfm}

procedure TfrConexao.BitBtn1Click(Sender: TObject);
begin
  Conexao(true);
  if Conectado = True then
    ShowMessage('conectado')
  else
    ShowMessage('nã');
end;

procedure TfrConexao.Button1Click(Sender: TObject);
begin
  Conexao(False);
  if Conectado = True then
    ShowMessage('conectado')
  else
    ShowMessage('nã');
end;

procedure TfrConexao.Conexao(aConnect: Boolean);
begin
  if aConnect = True then
  begin
    FDPhysPgDriverLink.VendorHome := ExtractFilePath(Application.ExeName);
    FDPhysPgDriverLink.VendorLib := 'libpq.dll';
    FDPhysPgDriverLink.Release;
    FDConnection.Params.Values['database'] := 'sos';
    FDConnection.Params.Values['user_name'] := 'postgres';
    FDConnection.Params.Values['password'] := 'atiladani';
    FDConnection.Params.Values['server'] := 'localhost';
    FDConnection.Params.Values['port'] := '5432';
    FDConnection.Connected := True;
  end
  else
  begin
    FDConnection.Connected := False;
  end;
  Conectado := FDConnection.Connected;
end;

end.
