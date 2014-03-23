object FormDaltonista: TFormDaltonista
  Left = 570
  Top = -21
  BorderStyle = bsDialog
  Caption = 'Daltonista'
  ClientHeight = 469
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ShapeZielony: TShape
    Left = 28
    Top = 164
    Width = 65
    Height = 65
    Brush.Color = clLime
    Shape = stCircle
    OnMouseDown = ShapeZielonyMouseDown
  end
  object ShapeZolty: TShape
    Left = 45
    Top = 76
    Width = 65
    Height = 65
    Brush.Color = clYellow
    Shape = stCircle
    OnMouseDown = ShapeZielonyMouseDown
  end
  object ShapeCzerwony: TShape
    Left = 116
    Top = 11
    Width = 65
    Height = 65
    Brush.Color = clRed
    Shape = stCircle
    OnMouseDown = ShapeZielonyMouseDown
  end
  object ShapeNiebieski: TShape
    Left = 204
    Top = 11
    Width = 65
    Height = 65
    Brush.Color = clBlue
    Shape = stCircle
    OnMouseDown = ShapeZielonyMouseDown
  end
  object ShapeRozowy: TShape
    Left = 277
    Top = 76
    Width = 65
    Height = 65
    Brush.Color = clFuchsia
    Shape = stCircle
    OnMouseDown = ShapeZielonyMouseDown
  end
  object ShapeBlekitny: TShape
    Left = 292
    Top = 164
    Width = 65
    Height = 65
    Brush.Color = clAqua
    Shape = stCircle
    OnMouseDown = ShapeZielonyMouseDown
  end
  object Shape: TShape
    Left = 118
    Top = 152
    Width = 150
    Height = 77
  end
  object GroupBoxWyniki: TGroupBox
    Left = 36
    Top = 276
    Width = 313
    Height = 105
    Caption = 'Wyniki'
    TabOrder = 2
    object LabeledEditPunkty: TLabeledEdit
      Left = 20
      Top = 42
      Width = 121
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Punkty'
      LabelPosition = lpAbove
      LabelSpacing = 3
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object LabeledEditGapa: TLabeledEdit
      Left = 172
      Top = 42
      Width = 121
      Height = 21
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = 'Gapa'
      LabelPosition = lpAbove
      LabelSpacing = 3
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
  end
  object ButtonStart: TButton
    Left = 155
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = ButtonStartClick
  end
  object EditStart: TEdit
    Left = 133
    Top = 400
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '20'
  end
  object TimerZegar: TTimer
    Enabled = False
    OnTimer = TimerZegarTimer
    Left = 179
    Top = 248
  end
end
