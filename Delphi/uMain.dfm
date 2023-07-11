object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Maptitude COM Client'
  ClientHeight = 627
  ClientWidth = 1240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 168
  TextHeight = 30
  object BtnLoadMapOle: TButton
    Left = 672
    Top = 546
    Width = 491
    Height = 44
    Hint = 'Accessing Maptitude through IDispatch OLE'
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Load Map (IDispatch late binding)'
    TabOrder = 0
    OnClick = BtnLoadMapOleClick
  end
  object BtnLoadMapIntf: TButton
    Left = 94
    Top = 546
    Width = 467
    Height = 44
    Hint = 'Accessing Maptitude through IMaptitude interface'
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Load Map (IMaptitude eager binding)'
    TabOrder = 1
    OnClick = BtnLoadMapIntfClick
  end
  object EdtMapToLoad: TLabeledEdit
    Left = 94
    Top = 434
    Width = 929
    Height = 38
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    EditLabel.Width = 155
    EditLabel.Height = 30
    EditLabel.Margins.Left = 5
    EditLabel.Margins.Top = 5
    EditLabel.Margins.Right = 5
    EditLabel.Margins.Bottom = 5
    EditLabel.Caption = 'Map File to Load'
    ReadOnly = True
    TabOrder = 2
    Text = ''
  end
  object MmoReadMe: TMemo
    Left = 66
    Top = 42
    Width = 1097
    Height = 281
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = False
    Lines.Strings = (
      
        'This demo illustrates a Maptitude COM client in Delphi/Object Pa' +
        'scal. The demo shows'
      
        'two different ways of accessing Maptitude:  by IMaptitude interf' +
        'ace (the static eager binding), '
      'or by IDispatch (the dynamic late-binding).'
      ''
      'Step 1: Launch Maptitude'
      'Step 2: Select "Map File to Load"'
      
        'Step 3: Click "Load Map (IMaptitude eager binding)" button to te' +
        'st eager binding'
      
        'Step 4: Click "Load Map (IDispatch late binding) button to test ' +
        'late binding')
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object BtnSelectMap: TButton
    Left = 1033
    Top = 434
    Width = 130
    Height = 38
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Select Map'
    TabOrder = 4
    OnClick = BtnSelectMapClick
  end
  object OpenDialog: TOpenDialog
    Left = 618
    Top = 338
  end
end
