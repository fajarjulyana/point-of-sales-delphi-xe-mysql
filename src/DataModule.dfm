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
    DataSet = ADOTable1
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
end