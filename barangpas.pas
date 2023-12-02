unit barangpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass;

type
  TForm1 = class(TForm)
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    ZQuery2: TZQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    frxrprt1: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
//ini buat tambah data
ZQuery2.SQL.Clear;
ZQuery2.SQL.Text := ''
ZQuery2.SQL.Text := 'INSERT INTO barang (nama, qty) VALUES (:nama, :qty)';

ZQuery2.ParamByName('nama').Value := Edit1.Text;
ZQuery2.ParamByName('qty').Value := Edit2.Text;

ZQuery2.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
//ini buat ubah data
ZQuery2.SQL.Clear;
ZQuery2.SQL.Text := ''
ZQuery2.SQL.Text := 'UPDATE barang SET nama= :nama, qty = :qty WHERE id = :id';

ZQuery2.ParamByName('id').Value := Edit3.Text;
ZQuery2.ParamByName('nama').Value := Edit1.Text;
ZQuery2.ParamByName('qty').Value := Edit2.Text;

ZQuery2.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
//buat ngambil data
Edit3.Text := ZQuery1.Fields[0].AsString;
Edit1.Text := ZQuery1.Fields[1].AsString;
Edit2.Text := ZQuery1.Fields[2].AsString;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
//ini buat hapus data
ZQuery2.SQL.Clear;
ZQuery2.SQL.Text := ''
ZQuery2.SQL.Text := 'DELETE FROM barang WHERE id = :id';

ZQuery2.ParamByName('id').Value := Edit3.Text;
ZQuery2.ParamByName('nama').Value := Edit1.Text;
ZQuery2.ParamByName('qty').Value := Edit2.Text;

ZQuery2.ExecSQL;
DataSource1.DataSet.Refresh;
end;

end.
