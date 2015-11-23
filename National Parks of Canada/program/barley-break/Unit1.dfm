object Form1: TForm1
  Left = 217
  Top = 134
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  ClientHeight = 414
  ClientWidth = 420
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 409
    Height = 393
    Color = clCream
    TabOrder = 0
    object Image1: TImage
      Left = 16
      Top = 16
      Width = 65
      Height = 57
      Cursor = crHandPoint
      Proportional = True
      Stretch = True
    end
    object Button1: TButton
      Left = 400
      Top = 0
      Width = 9
      Height = 25
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    object N0: TMenuItem
      Caption = 'Choose picture'
      object N1: TMenuItem
        Caption = '1'
        OnClick = N1Click
      end
      object N2: TMenuItem
        Caption = '2'
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '3'
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = 'Show picture'
      OnClick = Showpicture1Click
    end
    object N5: TMenuItem
      Caption = 'Exit'
      OnClick = N5Click
    end
  end
end
