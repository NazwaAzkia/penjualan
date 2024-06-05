unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a: String;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule4.Zsatuan.Fields[1].AsString;
Edit2.Text := DataModule4.Zsatuan.Fields[2].AsString;
a := DataModule4.ZSatuan.Fields[0].AsString;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
DataModule4.ZSatuan.SQL.Clear;
DataModule4.ZSatuan.SQL.Add('insert into satuan value(null, "'+Edit1.Text+'", "'+Edit2.Text+'")');
DataModule4.ZSatuan.ExecSQL ;

DataModule4.ZSatuan.SQL.Clear;
DataModule4.ZSatuan.SQL.Add('select * from satuan');
DataModule4.ZSatuan.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
   DataModule4. ZSatuan.SQL.Clear;
   if Edit1.Text <> '' then
   DataModule4. ZSatuan.SQL.Add('update satuan set name="'+edit1.Text+'" where id= "'+a+'"');
   DataModule4. ZSatuan.ExecSQL;

   DataModule4. ZSatuan.SQL.Clear;
   if Edit2.Text <> '' then
   DataModule4. ZSatuan.SQL.Add('update satuan set diskripsi="'+edit2.Text+'" where id= "'+a+'"');
   DataModule4. ZSatuan.ExecSQL;

   DataModule4.ZSatuan.SQL.Clear;
   DataModule4.ZSatuan.SQL.Add ('select * from satuan');
   DataModule4.ZSatuan.Open;
   ShowMessage('data berhasil diupdate');
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
DataModule4.ZSatuan.SQL.Clear;
DataModule4.ZSatuan.SQL.Add('delete from satuan where id= "'+a+'"');
DataModule4.ZSatuan.ExecSQL;

DataModule4.ZSatuan.SQL.Clear;
DataModule4.ZSatuan.SQL.Add('select * from satuan');
DataModule4.ZSatuan.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

end.
