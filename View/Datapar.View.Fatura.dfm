object frmFatura: TfrmFatura
  Left = 0
  Top = 0
  Caption = 'Datapar - Fatura'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 619
    Height = 258
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
  end
  object NavigatorBindSourceDB1: TBindNavigator
    Left = 387
    Top = 272
    Width = 240
    Height = 25
    DataSource = BindSourceDB1
    Orientation = orHorizontal
    TabOrder = 1
  end
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 16
    Top = 264
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 92
    Top = 253
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
end
