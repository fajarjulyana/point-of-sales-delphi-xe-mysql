object FormUtama: TFormUtama
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Point Of Sales'
  ClientHeight = 599
  ClientWidth = 947
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 19
  object PanelBanner: TPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 145
    Align = alTop
    Caption = 'Point of Sales'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 440
    Width = 947
    Height = 159
    Align = alBottom
    Caption = 'Total Pembayaran'
    TabOrder = 2
    object DiscountLbl: TLabel
      Left = 28
      Top = 43
      Width = 120
      Height = 33
      Caption = 'Discount :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 154
      Top = 43
      Width = 56
      Height = 33
      Caption = '20%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 28
      Top = 82
      Width = 188
      Height = 39
      Caption = 'Harga Total :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 276
      Top = 84
      Width = 139
      Height = 39
      Caption = '20.000,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 222
      Top = 84
      Width = 48
      Height = 39
      Caption = 'Rp.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 518
      Top = 48
      Width = 172
      Height = 23
      Caption = 'Metode Pembayaran'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object CO: TButton
      Left = 743
      Top = 56
      Width = 169
      Height = 65
      Caption = 'Check Out'
      TabOrder = 0
    end
    object MetodePembayaran: TComboBox
      Left = 520
      Top = 88
      Width = 145
      Height = 27
      TabOrder = 1
      Text = 'Pilih Pembayaran'
      Items.Strings = (
        'Cash'
        'Debet'
        'Tranfer'
        'Qris')
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 145
    Width = 617
    Height = 295
    Align = alLeft
    Caption = 'List Transaksi Barang'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 28
      Top = 90
      Width = 501
      Height = 333
      DataSource = DataModuleActive.DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object GroupBox3: TGroupBox
    Left = 296
    Top = 145
    Width = 651
    Height = 295
    Align = alRight
    Caption = 'Rincian Barang'
    TabOrder = 3
    object Label1: TLabel
      Left = 19
      Top = 43
      Width = 100
      Height = 19
      Caption = 'Kode Barang :'
    end
    object Label6: TLabel
      Left = 512
      Top = 103
      Width = 25
      Height = 19
      Caption = 'Qty'
    end
    object Edit1: TEdit
      Left = 125
      Top = 40
      Width = 372
      Height = 27
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      Left = 27
      Top = 90
      Width = 478
      Height = 333
      DataSource = DataModuleActive.DataSource2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Edit2: TEdit
      Left = 511
      Top = 128
      Width = 121
      Height = 27
      NumbersOnly = True
      TabOrder = 2
      Text = '1'
    end
    object BitBtn1: TBitBtn
      Left = 528
      Top = 41
      Width = 105
      Height = 25
      Caption = 'Input'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Menu: TMainMenu
    object Opsi1: TMenuItem
      Caption = 'Opsi'
      object Pengaturan1: TMenuItem
        Caption = 'Pengaturan'
        object InputBarang1: TMenuItem
          Caption = 'Input Barang'
          OnClick = InputBarang1Click
        end
        object ampilan1: TMenuItem
          Caption = 'Tampilan'
        end
      end
      object Keluar1: TMenuItem
        Caption = 'Keluar'
        OnClick = Keluar1Click
      end
    end
  end
end
