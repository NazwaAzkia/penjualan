unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: String;

implementation

uses
  Unit1, Unit4;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
DataModule4.Zkategori.SQL.Clear;
DataModule4.Zkategori.SQL.Add('insert into kategori value(null,"'+Edit1.Text+'")');
DataModule4.Zkategori.ExecSQL ;

DataModule4.Zkategori.SQL.Clear;
DataModule4.Zkategori.SQL.Add('select * from kategori');
DataModule4.Zkategori.Open;
ShowMessage('Data Berhasil Disimpan!');

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   DataModule4. Zkategori.SQL.Clear;
   DataModule4. Zkategori.SQL.Add('update kategori set name="'+edit1.Text+'" where id= "'+a+'"');
   DataModule4. Zkategori.ExecSQL;

   DataModule4.Zkategori.SQL.Clear;
   DataModule4.Zkategori.SQL.Add ('select * from kategori');
   DataModule4.Zkategori.Open;
   ShowMessage('data berhasil diupdate');

end;

procedure TForm3.Button3Click(Sender: TObject);
begin
DataModule4.Zkategori.SQL.Clear;
DataModule4.Zkategori.SQL.Add('delete from kategori where id= "'+a+'"');
DataModule4.Zkategori.ExecSQL;

DataModule4.Zkategori.SQL.Clear;
DataModule4.Zkategori.SQL.Add('select * from kategori');
DataModule4.Zkategori.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule4.Zkategori.Fields[1].AsString;
a:= DataModule4.Zkategori.Fields[0].AsString;
end;

end.
