object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object Image1: TImage
    Left = 75
    Top = 0
    Width = 474
    Height = 441
    Align = alClient
    ExplicitLeft = 440
    ExplicitTop = 368
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
    ExplicitLeft = 280
    ExplicitTop = 256
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
    ExplicitLeft = 280
    ExplicitTop = 232
    ExplicitHeight = 25
  end
end
