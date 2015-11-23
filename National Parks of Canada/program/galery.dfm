object Form3: TForm3
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = 'Form3'
  ClientHeight = 504
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 104
    Top = 40
    Width = 465
    Height = 361
  end
  object Label1: TLabel
    Left = 592
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Image2: TImage
    Left = 112
    Top = 48
    Width = 449
    Height = 345
  end
  object Button1: TButton
    Left = 392
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 584
    Top = 104
  end
end
