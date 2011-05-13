object Form2: TForm2
  Left = 365
  Top = 340
  Caption = 'Math Solver'
  ClientHeight = 66
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object lbl: TLabel
    Left = 82
    Top = 8
    Width = 250
    Height = 50
    WordWrap = True
    OnMouseEnter = onenter
  end
  object Open: TButton
    Left = 1
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = OpenClick
  end
  object Save: TButton
    Left = 338
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = SaveClick
  end
  object tme: TTimer
    Interval = 100
    OnTimer = tmeTimer
  end
  object tme2: TTimer
    Interval = 5000
    OnTimer = tme2Timer
  end
  object odl: TOpenDialog
  end
  object sdl: TSaveDialog
  end
end
