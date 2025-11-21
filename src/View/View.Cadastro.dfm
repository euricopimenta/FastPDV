object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 620
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_FooterCadastro: TPanel
    Left = 0
    Top = 552
    Width = 501
    Height = 68
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object pnl_Excluir: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 15
      Width = 139
      Height = 37
      Cursor = crHandPoint
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      BevelOuter = bvNone
      Caption = 'Excluir'
      Color = 3951839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 348
      Top = 15
      Width = 139
      Height = 37
      Cursor = crHandPoint
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      BevelOuter = bvNone
      Caption = 'Salvar'
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object pnl_Voltar: TPanel
      AlignWithMargins = True
      Left = 180
      Top = 15
      Width = 139
      Height = 37
      Cursor = crHandPoint
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      BevelOuter = bvNone
      Caption = 'Voltar'
      Color = 3951839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnl_HeaderCadastro: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 568
    ExplicitWidth = 366
    object lbl_HeaderCadastro: TLabel
      Left = 0
      Top = 0
      Width = 501
      Height = 52
      Align = alClient
      Caption = 'Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      ExplicitTop = -13
      ExplicitWidth = 366
      ExplicitHeight = 65
    end
  end
end
