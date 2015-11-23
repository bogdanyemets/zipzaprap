object DataModuleParks: TDataModuleParks
  OldCreateOrder = False
  Height = 152
  Width = 263
  object ParksTable: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Parks'
    Left = 112
    Top = 16
    object ParksTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
    end
    object ParksTableName: TWideStringField
      Alignment = taCenter
      FieldName = 'Name'
      Size = 50
    end
    object ParksTableAreasqkm: TIntegerField
      Alignment = taCenter
      FieldName = 'Area (sqkm)'
    end
    object ParksTableLocation: TWideStringField
      Alignment = taCenter
      FieldName = 'Location'
      Size = 50
    end
    object ParksTableEstablished: TIntegerField
      Alignment = taCenter
      FieldName = 'Established'
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Parks' +
      '.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:System' +
      ' database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Passw' +
      'ord="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=0' +
      ';Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Trans' +
      'actions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Sy' +
      'stem Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:D' +
      'on'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Repl' +
      'ica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ParksTable
    Left = 112
    Top = 80
  end
  object FindQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Parks')
    Left = 200
    Top = 16
    object FindQueryKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object FindQueryName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object FindQueryAreasqkm: TIntegerField
      FieldName = 'Area (sqkm)'
    end
    object FindQueryLocation: TWideStringField
      FieldName = 'Location'
      Size = 50
    end
    object FindQueryEstablished: TIntegerField
      FieldName = 'Established'
    end
  end
  object FindSourse: TDataSource
    DataSet = FindQuery
    Left = 200
    Top = 80
  end
end
