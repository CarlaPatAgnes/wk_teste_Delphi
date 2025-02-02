unit U_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_Pesquisa = class(TForm)
    edt_Cod: TEdit;
    lbl_Cod_Cli: TLabel;
    btn_OK: TSpeedButton;
    dbg_Listar: TDBGrid;
    btn_Pesquisar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_OKClick(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
    procedure dbg_ListarDblClick(Sender: TObject);
    procedure dbg_ListarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_ListarKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CodKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    flag : String;
  end;

var
  frm_Pesquisa: Tfrm_Pesquisa;

implementation

{$R *.dfm}

uses U_dm, U_PDV;

procedure Tfrm_Pesquisa.btn_OKClick(Sender: TObject);
begin

  if flag = 'Cliente' then
  begin
    frm_pdv.edt_Cod_Cli.Text := FormatFloat('000000', DM.SQL_clientes.FieldByName('id_cli').AsFloat);
    frm_pdv.edt_Desc_Ser.Text := DM.SQL_clientes.FieldByName('nome').AsString;
  end
  else
  begin
    frm_pdv.edt_Cod_Prod.Text := DM.SQL_produtos.FieldByName('id_prod').AsString;
    frm_pdv.edt_Desc_Prod.Text := DM.SQL_produtos.FieldByName('descricao').AsString;
    frm_pdv.edt_Preco_Venda.Text := FormatFloat(',0.00', DM.SQL_produtos.FieldByName('preco_venda').AsFloat);
  end;

  frm_Pesquisa.Close;

end;

procedure Tfrm_Pesquisa.btn_PesquisarClick(Sender: TObject);
begin
    edt_Cod.Clear;

    DM.SQL_clientes.Active := True;

    with DM.SQL_clientes do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM clientes');
      SQL.Add('WHERE nome LIKE :descricao');
      Open;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM clientes');
      SQL.Add('WHERE nome LIKE :descricao');
      Open;

      if RecordCount > 0 then
      begin
        dbg_Listar.SetFocus;
      end
      else
      begin
        ShowMessage('Cliente não encontrado!');
      end;
    end;

end;

procedure Tfrm_Pesquisa.dbg_ListarDblClick(Sender: TObject);
begin
   btn_OK.Click;
end;

procedure Tfrm_Pesquisa.dbg_ListarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = VK_ESCAPE then
end;

procedure Tfrm_Pesquisa.dbg_ListarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btn_OK.Click;
end;

procedure Tfrm_Pesquisa.edt_CodKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  begin

      DM.SQL_clientes.Active := True;

      with DM.SQL_clientes do
      begin

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM clientes');
        SQL.Add('WHERE id_cli = :codigo');
        ParamByName('codigo').Value := edt_Cod.Text;
        Open;

        if RecordCount = 1 then

      end;
  end;
end;

procedure Tfrm_Pesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_Pesquisa := nil;
end;

end.
