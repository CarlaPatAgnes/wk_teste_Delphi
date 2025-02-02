unit WK.Cliente;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, System.IniFiles, vcl.forms;

type

  TCliente = class

    Private
    FUF: String;
    FCodigo: Longint;
    FNome: String;
    FCidade: String;
    procedure SetCidade(const Value: String);
    procedure SetCodigo(const Value: Longint);
    procedure SetNome(const Value: String);
    procedure SetUF(const Value: String);

    Public
      //metodos construtor e destrutor
      Constructor Create (Conn:TFDConnection);
      Destructor  Destroy; Override;

      Property Codigo : Longint read FCodigo write SetCodigo;
      Property Nome   : String read FNome write SetNome;
      Property Cidade : String read FCidade write SetCidade;
      Property UF     : String read FUF write SetUF;

       Function Retorna_Dados_Cliente (Pesquisa:String; Var Codigo:Longint; Var Nome:String; VAR Qryclientes: TFDQuery; vResult : String): Longint;

 end;

implementation

  var ConnCompartilhada : TFDConnection;

{ TCliente }

constructor TCliente.Create(Conn: TFDConnection);
begin
  if not Assigned(ConnCompartilhada) then
    ConnCompartilhada := TFDConnection.Create(nil);
    ConnCompartilhada := Conn;
end;

destructor TCliente.Destroy;
begin
  inherited;
end;

function TCliente.Retorna_Dados_Cliente (Pesquisa:String; Var Codigo:Longint; Var Nome:String; VAR Qryclientes: TFDQuery; vResult : String): Longint;
Var
  Qry : TFDQuery;
  ISNumber : Boolean;
begin

  vResult :='';

  Qry := TFDQuery.Create(nil);
  Qry.Connection := ConnCompartilhada;
  try

    try
     if StrToInt(Pesquisa)>0 then
       ISNumber := True;
    except
       ISNumber := False;
    end;

    if ISNumber then
     Qry.SQL.Add('Select id_cli, Nome from clientes where id_cli = '+Pesquisa)
    else
     Qry.SQL.Add('Select id_cli, Nome from clientes where Nome LIKE ' + #39 + '%' + Pesquisa + '%' + #39);

    try

      Qry.Open;
      Result := Qry.RecordCount;

      Qryclientes.SQL.Text  := Qry.SQL.Text;
      Qryclientes.Open;

      if Result = 0 then
        vResult := 'Registro n�o encontrado, favor verificar novamente!';

      if Result = 1 then begin
        Codigo := Qry.Fields[0].AsInteger;
        Nome   := Qry.Fields[1].AsString;
      end;

    except
      vResult := 'Erro ao executar a solicita��o de Pesquisa!';
    end;

  finally
    Qry.Free;
  end;

end;

procedure TCliente.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TCliente.SetCodigo(const Value: Longint);
begin
  FCodigo := Value;
end;

procedure TCliente.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TCliente.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
