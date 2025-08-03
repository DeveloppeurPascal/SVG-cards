object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object VirtualImage1: TVirtualImage
    Left = 75
    Top = 0
    Width = 474
    Height = 441
    Align = alClient
    ImageCollection = DmSVGCards.ImageCollection1
    ImageWidth = 0
    ImageHeight = 0
    ImageIndex = -1
    ExplicitLeft = 272
    ExplicitTop = 192
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object btnPrevious: TButton
    Left = 0
    Top = 0
    Width = 75
    Height = 441
    Align = alLeft
    Caption = 'btnPrevious'
    TabOrder = 0
    OnClick = btnPreviousClick
    ExplicitLeft = 280
    ExplicitTop = 232
    ExplicitHeight = 25
  end
  object btnNext: TButton
    Left = 549
    Top = 0
    Width = 75
    Height = 441
    Align = alRight
    Caption = 'btnNext'
    TabOrder = 1
    OnClick = btnNextClick
    ExplicitLeft = 288
    ExplicitTop = 240
    ExplicitHeight = 25
  end
end
