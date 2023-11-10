unit InputBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus;

type
  TInputBrg = class(TForm)
    Menu: TMainMenu;
    Kembali: TMenuItem;
    PanelBanner: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Button1: TButton;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    DBText3: TDBText;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    DBEditor: TDBNavigator;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    procedure KembaliClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InputBrg: TInputBrg;

implementation

{$R *.dfm}

uses MainForm, DataModule;

procedure TInputBrg.Button1Click(Sender: TObject);
begin
DBEditor.BtnClick(nbCancel);
Button2.Caption := 'Tambah';
Button1.Enabled := false;
button3.Enabled := True;
end;

procedure TInputBrg.Button2Click(Sender: TObject);
begin
if Button2.Caption = 'Tambah' then
begin
DBEditor.BtnClick(nbInsert);
Button2.Caption:= 'Simpan';
Button1.Enabled := True;
end

else if Button2.Caption = 'Simpan' then
begin
DBEditor.BtnClick(nbPost);
Button2.Caption := 'Tambah';
button1.Enabled := False;
 button3.Enabled := True;
end
end;
procedure TInputBrg.Button3Click(Sender: TObject);
begin
if Button3.Enabled = true then
 begin
 DBEditor.BtnClick(nbEdit);
 Button3.Enabled := false;
 Button2.Caption:= 'Simpan';
 button1.Enabled := True;
 end
 else if Button3.Enabled = False then
      begin
        button3.Enabled := True;
        Button2.Caption := 'Tambah';
         button1.Enabled := False;
      end;
end;

procedure TInputBrg.Button4Click(Sender: TObject);
begin
DBEditor.BtnClick(nbDelete);
end;

procedure TInputBrg.DBGrid1CellClick(Column: TColumn);
begin
Button3.Enabled := True;
end;

procedure TInputBrg.KembaliClick(Sender: TObject);
begin
close;
end;

end.
