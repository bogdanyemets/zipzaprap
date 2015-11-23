object forma: Tforma
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'forma'
  ClientHeight = 370
  ClientWidth = 539
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 193
    Height = 113
    Center = True
    Proportional = True
  end
  object killpict: TTimer
    Enabled = False
    Interval = 30
    OnTimer = killpictTimer
    Left = 432
    Top = 72
  end
end
