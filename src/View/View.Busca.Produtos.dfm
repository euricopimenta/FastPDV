object frm_SelecionarProduto: Tfrm_SelecionarProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 587
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 172
    Height = 25
    Caption = 'Selecionar Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg_Produtos: TDBGrid
    Left = 8
    Top = 39
    Width = 680
    Height = 474
    Cursor = crHandPoint
    BorderStyle = bsNone
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 519
    Width = 696
    Height = 68
    Align = alBottom
    BevelEdges = []
    BevelOuter = bvNone
    Color = 4144699
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      696
      68)
    object pnl_Voltar: TPanel
      AlignWithMargins = True
      Left = 391
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
      TabOrder = 0
      OnClick = pnl_VoltarClick
    end
    object pnl_BtnAdicionar: TPanel
      AlignWithMargins = True
      Left = 542
      Top = 15
      Width = 139
      Height = 37
      Cursor = crHandPoint
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Anchors = [akLeft, akBottom]
      BevelOuter = bvNone
      Caption = 'Adicionar'
      Color = 10070286
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnl_BtnAdicionarClick
    end
  end
end
