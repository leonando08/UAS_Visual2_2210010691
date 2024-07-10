unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edt6: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure edt6Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  //button baru
bersih;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
btn6.Enabled:= False;
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
edt6.Enabled:=True;
cbb1.Enabled:=True;
end;

procedure TForm1.posisiawal;
begin
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
btn6.Enabled:=True;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
edt4.Enabled:=False;
edt5.Enabled:=False;
edt6.Enabled:=True;
cbb1.Enabled:=False;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Text:= 'Pilih--';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  //kode button simpan
  if edt1.Text = '' then
  begin
    ShowMessage('Nama satuan tidak boleh kosong');
  end
  else if DataModule2.Zkustomer.Locate('name', edt1.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edt1.Text + ' sudah ada dalam sistem');
  end
  else
  begin
    with DataModule2.Zkustomer do
    begin
      Insert;
      SQL.Clear;
      SQL.Add('INSERT INTO kustomer VALUES (NULL, "' + edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '", "' + cbb1.Text + '")');

      ExecSQL;
      SQL.Clear;
      SQL.Add('SELECT * FROM kustomer');
      Open;
    end;
    ShowMessage('Data berhasil disimpan');
  end;
  posisiawal;
end;



procedure TForm1.btn3Click(Sender: TObject);
 begin
// update (button Edit)
 if edt1.Text = '' then
begin
  ShowMessage('Nik kustomer tidak boleh kosong');
end
else if (edt1.Text = DataModule2.Zkustomer.FieldByName('nik').AsString) and
         (edt2.Text = DataModule2.Zkustomer.FieldByName('name').AsString) and
         (edt3.Text = DataModule2.Zkustomer.FieldByName('telp').AsString) and
         (edt4.Text = DataModule2.Zkustomer.FieldByName('email').AsString) and
         (edt5.Text = DataModule2.Zkustomer.FieldByName('alamat').AsString) and
         (cbb1.Text = DataModule2.Zkustomer.FieldByName('member').AsString) then
begin
  ShowMessage('nik kustomer' + edt1.Text + ' dan deskripsi tidak mengalami perubahan');
end
else
begin
  with DataModule2.Zkustomer do
  begin
    SQL.Clear;
    SQL.Add('UPDATE kustomer SET nik="' + edt1.Text + '", name="' + edt2.Text + '", telp="' + edt3.Text + '", email="' + edt4.Text + '", alamat="' + edt5.Text + '", member="' + cbb1.Text + '" WHERE id="' + a + '"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('SELECT * FROM kustomer');
    Open;
  end;
  ShowMessage('Data berhasil disimpan');
end;
posisiawal;
end;



procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  //dbgrid event cellclick
    edt1.Text := DataModule2.Zkustomer.Fields[1].AsString;
    edt2.Text := DataModule2.Zkustomer.Fields[2].AsString;
    edt3.Text := DataModule2.Zkustomer.Fields[3].AsString;
    edt4.Text := DataModule2.Zkustomer.Fields[4].AsString;
    edt5.Text := DataModule2.Zkustomer.Fields[5].AsString;
    cbb1.Text := DataModule2.Zkustomer.Fields[6].AsString;
    a:=DataModule2.Zkustomer.Fields[0].AsString;

    btn1.Enabled:=False;
    btn2.Enabled:=True;
    btn3.Enabled:=True;
    btn4.Enabled:=True;
    btn5.Enabled:=False;

end;

procedure TForm1.btn4Click(Sender: TObject);
begin
 //kode button delete
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule2.Zkustomer do
begin
     SQL.Clear;
     SQL.Add('delete from kustomer where id="'+a+'"');
     ExecSQL;

     SQL.Clear;
     SQL.Add('select * from kustomer');
     Open;
end;
   ShowMessage('Data Berhasil DiDelete!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  //button batal
  begin
edt1.Text:='';
edt2.Text:='';
edt3.Text:='';
edt4.Text:='';
edt5.Text:='';
cbb1.Text:='';
end;
   posisiawal;
end;
 procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
case cbb1.ItemIndex of
    0: lbl8.Caption := '10%';
    1: lbl8.Caption := '5%';
end;
end;
procedure TForm1.btn6Click(Sender: TObject);
begin
  //button laporan
begin
DataModule2.frxkustomer.ShowReport();
end;
 posisiawal;
end;
procedure TForm1.edt6Change(Sender: TObject);
begin
//kode search
begin
with DataModule2.Zkustomer do
begin
  SQL.Clear;
  SQL.Add('select * from kustomer where name like"%'+edt6.Text+'%"');
  Open;
end;
end;
end;

end.
