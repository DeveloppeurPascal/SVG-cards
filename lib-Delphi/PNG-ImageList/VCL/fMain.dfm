object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object VirtualImage1: TVirtualImage
    Left = 75
    Top = 0
    Width = 474
    Height = 441
    Align = alClient
    ImageCollection = dmSVGcards.ImageCollection1
    ImageWidth = 0
    ImageHeight = 0
    ImageIndex = -1
    ExplicitLeft = 168
    ExplicitTop = 120
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object btnPrev: TButton
    Left = 0
    Top = 0
    Width = 75
    Height = 441
    Align = alLeft
    Caption = 'btnPrev'
    TabOrder = 0
    OnClick = btnPrevClick
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
  end
end
