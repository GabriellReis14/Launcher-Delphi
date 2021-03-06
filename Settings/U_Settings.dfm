object frmOpcoes: TfrmOpcoes
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Settings'
  ClientHeight = 465
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnSettings: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 465
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object lblAccountID: TLabel
      Left = 42
      Top = 57
      Width = 96
      Height = 24
      Caption = 'Account ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -19
      Font.Name = 'Product Sans'
      Font.Style = []
      ParentFont = False
    end
    object lblResolution: TLabel
      Left = 42
      Top = 119
      Width = 91
      Height = 24
      Caption = 'Resolution:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -19
      Font.Name = 'Product Sans'
      Font.Style = []
      ParentFont = False
    end
    object lblVolume: TLabel
      Left = 104
      Top = 350
      Width = 57
      Height = 20
      Caption = 'Volume:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Product Sans'
      Font.Style = []
      ParentFont = False
    end
    object edtAccountID: TEdit
      Left = 144
      Top = 56
      Width = 185
      Height = 21
      TabOrder = 0
    end
    object rgResolution: TRadioGroup
      Left = 42
      Top = 149
      Width = 391
      Height = 84
      Color = clWhite
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        '640x480'
        '800x600'
        '1024x768'
        '1280x1024'
        '1366x768'
        '1440x900')
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object chkWindowMode: TCheckBox
      Left = 160
      Top = 253
      Width = 153
      Height = 17
      Caption = 'Window Mode'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnHighlight
      Font.Height = -16
      Font.Name = 'Product Sans'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      StyleElements = []
    end
    object chkMusic: TCheckBox
      Left = 160
      Top = 283
      Width = 153
      Height = 17
      Caption = 'Music On/Off'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnHighlight
      Font.Height = -16
      Font.Name = 'Product Sans'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      StyleElements = []
    end
    object chkSound: TCheckBox
      Left = 160
      Top = 313
      Width = 185
      Height = 17
      Caption = 'Sound Effects On/Off'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnHighlight
      Font.Height = -16
      Font.Name = 'Product Sans'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      StyleElements = []
    end
    object pnCancel: TPanel
      Left = 64
      Top = 400
      Width = 137
      Height = 41
      BevelOuter = bvNone
      TabOrder = 5
      object shpCancel: TShape
        Left = 0
        Top = 0
        Width = 137
        Height = 41
        Align = alClient
        Brush.Color = 4737279
        Shape = stRoundRect
        ExplicitLeft = 56
        ExplicitTop = 16
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object btnCancel: TSpeedButton
        Left = 0
        Top = 0
        Width = 137
        Height = 41
        Align = alClient
        Caption = 'Cancel'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Product Sans'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelClick
        ExplicitLeft = 64
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnConfirm: TPanel
      Left = 286
      Top = 400
      Width = 137
      Height = 41
      BevelOuter = bvNone
      TabOrder = 6
      object shpBtnOk: TShape
        Left = 0
        Top = 0
        Width = 137
        Height = 41
        Align = alClient
        Brush.Color = 49505
        Shape = stRoundRect
        ExplicitLeft = 56
        ExplicitTop = 16
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object btnOk: TSpeedButton
        Left = 0
        Top = 0
        Width = 137
        Height = 41
        Align = alClient
        Caption = 'Ok'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Product Sans'
        Font.Style = []
        ParentFont = False
        OnClick = btnOkClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object trackBar: TTrackBar
      Left = 160
      Top = 350
      Width = 150
      Height = 23
      TabOrder = 7
    end
  end
end
