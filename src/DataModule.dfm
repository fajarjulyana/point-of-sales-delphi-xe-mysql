object DataModuleActive: TDataModuleActive
  OldCreateOrder = False
  Height = 140
  Width = 323
  object Koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySql' +
      ';Mode=ReadWrite;Initial Catalog=pointofsalesdb'
    LoginPrompt = False
    Mode = cmReadWrite
    Left = 8
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Koneksi
    CursorType = ctStatic
    TableDirect = True
    TableName = 'detail_penjualan'
    Left = 48
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 144
    Top = 8
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = Koneksi
    CursorType = ctStatic
    TableName = 'produk'
    Left = 80
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT detail_penjualan.id, produk.nama_produk, produk.harga FRO' +
        'M detail_penjualan JOIN produk ON produk.id = detail_penjualan.i' +
        'd_produk')
    Left = 40
    Top = 80
  end
end
