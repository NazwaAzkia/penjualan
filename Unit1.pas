unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    DATAMASTER1: TMenuItem;
    KATEGORI1: TMenuItem;
    SATUAN1: TMenuItem;
    SUPPLIER1: TMenuItem;
    KUSTOMER1: TMenuItem;
    RANSAKSI1: TMenuItem;
    PENJUALAN1: TMenuItem;
    PEMBELIAN1: TMenuItem;
    LAPORAN1: TMenuItem;
    LAPORANPENJUALAN1: TMenuItem;
    LAPORANPEMBELIAN1: TMenuItem;
    LAPORANBARANG1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure LOGIN1Click(Sender: TObject);
    procedure KATEGORI1Click(Sender: TObject);
    procedure SATUAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
MainMenu1.Items[1].Visible:=False;
MainMenu1.Items[2].Visible:=False;
MainMenu1.Items[3].Visible:=False;
end;

procedure TForm1.LOGIN1Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.KATEGORI1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.SATUAN1Click(Sender: TObject);
begin
Form5.Show;
end;

end.
