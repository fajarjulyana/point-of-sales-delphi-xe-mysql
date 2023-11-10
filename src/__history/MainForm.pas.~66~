unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFormUtama = class(TForm)
    Menu: TMainMenu;
    Opsi1: TMenuItem;
    Pengaturan1: TMenuItem;
    Keluar1: TMenuItem;
    PanelBanner: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    DiscountLbl: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    CO: TButton;
    MetodePembayaran: TComboBox;
    Label15: TLabel;
    DBGrid1: TDBGrid;
    InputBarang1: TMenuItem;
    ampilan1: TMenuItem;
    DBGrid2: TDBGrid;
    Edit2: TEdit;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    procedure Keluar1Click(Sender: TObject);
    procedure InputBarang1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUtama: TFormUtama;

implementation

{$R *.dfm}

uses DataModule, InputBarang;

procedure TFormUtama.BitBtn1Click(Sender: TObject);
begin
  // Melakukan pencarian berdasarkan kolom "NamaKolom" dengan nilai yang diisi di Edit1
  if DataModuleActive.ADOTable2.Locate('id', Edit1.Text, []) then
  begin
    // Data ditemukan, akses data dengan ADOTable1.FieldByName('NamaKolom')
    ShowMessage('Data ditemukan: ' + DataModuleActive.ADOTable2.FieldByName('id').AsString);
 if DataModuleActive.ADOTable1.FindField('id') <> nil then
  begin
    // Mulai edit
    DataModuleActive.ADOTable1.Append;

    // Isi kolom 'NamaKolom' dengan nilai dari Edit1
    DataModuleActive.ADOTable1.FieldByName('id_produk').AsString := Edit1.Text;
    DataModuleActive.ADOTable1.FieldByName('jumlah').AsString := Edit2.Text;
    DataModuleActive.ADOTable1.FieldByName('SubTotal').AsFloat := DataModuleActive.ADOTable2.FieldByName('Harga').AsFloat*strtofloat(edit2.Text);
    // Simpan perubahan ke tabel
    DataModuleActive.ADOTable1.Post;
    DataModuleActive.ADOQuery1.Active := False;
    DataModuleActive.ADOQuery1.Active := True;
    // Tutup edit
    DataModuleActive.ADOTable1.Close;
    DataModuleActive.ADOTable1.Open;
    end;
    ShowMessage('Data berhasil disimpan.');
  end
  else
  begin
    // Data tidak ditemukan
    ShowMessage('Data tidak ditemukan.');
  end;
end;

procedure TFormUtama.InputBarang1Click(Sender: TObject);
begin
InputBrg.Show;
end;

procedure TFormUtama.Keluar1Click(Sender: TObject);
begin
Close;
end;

end.
