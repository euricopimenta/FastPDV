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
    DataSource = dts_Produtos
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
    ExplicitTop = 548
    ExplicitWidth = 702
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
  object qry_Produtos: TIBQuery
    Database = DM_InterBase.IBDatabase1
    Transaction = DM_InterBase.IBTransaction1
    ForcedRefresh = True
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = False
    SQL.Strings = (
      'SELECT'
      '    p.codigo,'
      '    p.descricao,'
      '    p.valor'
      'FROM cadproduto p')
    Left = 240
    Top = 536
    object qry_ProdutosCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"CADPRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_ProdutosDESCRICAO: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRICAO'
      Origin = '"CADPRODUTO"."DESCRICAO"'
      Size = 40
    end
    object qry_ProdutosVALOR: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR'
      Origin = '"CADPRODUTO"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dts_Produtos: TDataSource
    DataSet = qry_Produtos
    Left = 160
    Top = 536
  end
end
