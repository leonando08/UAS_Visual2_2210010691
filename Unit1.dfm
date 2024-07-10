object Form1: TForm1
  Left = 194
  Top = 145
  Width = 797
  Height = 629
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 72
    Width = 21
    Height = 16
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 104
    Top = 112
    Width = 39
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 104
    Top = 152
    Width = 29
    Height = 16
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 104
    Top = 192
    Width = 40
    Height = 16
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 104
    Top = 232
    Width = 55
    Height = 16
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 104
    Top = 272
    Width = 53
    Height = 16
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 408
    Top = 264
    Width = 56
    Height = 16
    Caption = 'DISKON :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 488
    Top = 264
    Width = 96
    Height = 16
    Caption = 'Terisi Otomatis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 96
    Top = 512
    Width = 98
    Height = 13
    Caption = 'MASUKKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 192
    Top = 64
    Width = 449
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 192
    Top = 104
    Width = 449
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 192
    Top = 144
    Width = 449
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 192
    Top = 184
    Width = 449
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 192
    Top = 224
    Width = 449
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 192
    Top = 264
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Pilih--'
    OnChange = cbb1Change
    Items.Strings = (
      'Yes'
      'No')
  end
  object btn1: TButton
    Left = 96
    Top = 320
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 320
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 288
    Top = 320
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 384
    Top = 320
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 480
    Top = 320
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 80
    Top = 368
    Width = 569
    Height = 120
    DataSource = DataModule2.dskustomer
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'member'
        Visible = True
      end>
  end
  object edt6: TEdit
    Left = 208
    Top = 504
    Width = 433
    Height = 21
    TabOrder = 12
    OnChange = edt6Change
  end
  object btn6: TButton
    Left = 568
    Top = 320
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 13
    OnClick = btn6Click
  end
end
