object frm_pdv: Tfrm_pdv
  Left = 0
  Top = 0
  ActiveControl = edt_Cod_Cli
  BorderStyle = bsNone
  Caption = 'Tela de PDV'
  ClientHeight = 530
  ClientWidth = 780
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClick = FormClick
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 16
  object lbl_Buscar_Cod_Servico: TLabel
    Left = 8
    Top = 99
    Width = 51
    Height = 18
    Caption = 'C'#243'digo'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 160
    Width = 59
    Height = 18
    Caption = 'Produto'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 50
    Width = 114
    Height = 18
    Caption = 'Numero Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 224
    Top = 50
    Width = 100
    Height = 18
    Caption = 'Data Emissao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 144
    Top = 50
    Width = 36
    Height = 18
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 61
    Top = 211
    Width = 74
    Height = 16
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 202
    Top = 208
    Width = 50
    Height = 16
    Caption = 'Unitario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 345
    Top = 208
    Width = 32
    Height = 16
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 317
    Top = 274
    Width = 116
    Height = 18
    Caption = 'Itens do Pedido'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label15: TLabel
    Left = 516
    Top = 452
    Width = 129
    Height = 19
    Caption = 'Total do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 77
    Top = 101
    Width = 122
    Height = 18
    Caption = 'Nome do Cliente'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 298
    Width = 764
    Height = 145
    Color = cl3DLight
    DataSource = DM.ds_pedidos_produtos
    FixedColor = clWhite
    GradientEndColor = clBlue
    GradientStartColor = clCream
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'produtos_id_prod'
        Title.Alignment = taCenter
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 330
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde'
        Title.Alignment = taRightJustify
        Title.Caption = 'Quantidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_unit'
        Title.Alignment = taRightJustify
        Title.Caption = 'Unit'#225'rio'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_total'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total R$'
        Width = 100
        Visible = True
      end>
  end
  object TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 11426061
    DragCursor = crHandPoint
    ParentBackground = False
    TabOrder = 1
    StyleElements = [seFont, seBorder]
    StyleName = 'Windows'
    OnMouseDown = Panel1MouseDown
    ExplicitLeft = -7
    object Label3: TLabel
      Left = 6
      Top = 7
      Width = 65
      Height = 23
      Caption = 'Pedido'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnMouseDown = Panel1MouseDown
    end
    object Label16: TLabel
      Left = 750
      Top = 6
      Width = 13
      Height = 23
      Caption = 'X'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label16Click
    end
    object Label17: TLabel
      Left = 725
      Top = -7
      Width = 17
      Height = 48
      Caption = '-'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label17Click
    end
  end
  object edt_Cod_Cli: TEdit
    Left = 8
    Top = 120
    Width = 63
    Height = 26
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnExit = edt_Cod_CliExit
    OnKeyDown = edt_Cod_CliKeyDown
  end
  object edt_Desc_Ser: TEdit
    Left = 77
    Top = 120
    Width = 452
    Height = 26
    CharCase = ecUpperCase
    Color = clYellow
    Ctl3D = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnKeyDown = edt_Desc_SerKeyDown
  end
  object edt_Cod_Prod: TEdit
    Left = 8
    Top = 182
    Width = 145
    Height = 26
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    OnKeyDown = edt_Cod_ProdKeyDown
  end
  object edt_Desc_Prod: TEdit
    Left = 159
    Top = 182
    Width = 604
    Height = 26
    CharCase = ecUpperCase
    Color = clYellow
    Ctl3D = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnKeyDown = edt_Desc_ProdKeyDown
  end
  object edt_Hora: TEdit
    Left = 144
    Top = 69
    Width = 66
    Height = 26
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object edt_Data: TEdit
    Left = 224
    Top = 69
    Width = 121
    Height = 26
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object edt_Num_Pedido: TEdit
    Left = 8
    Top = 69
    Width = 121
    Height = 26
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Text = '0'
  end
  object Panel2: TPanel
    Left = 8
    Top = 152
    Width = 758
    Height = 4
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 9
  end
  object edt_Qtde: TEdit
    Left = 7
    Top = 230
    Width = 118
    Height = 26
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Text = '1'
    OnExit = edt_QtdeExit
  end
  object edt_Preco_Venda: TEdit
    Left = 132
    Top = 230
    Width = 118
    Height = 26
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    Text = '0,00'
    OnExit = edt_QtdeExit
  end
  object edt_Total: TEdit
    Left = 256
    Top = 230
    Width = 118
    Height = 26
    Alignment = taRightJustify
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    Text = '0,00'
  end
  object btn_Gravar: TButton
    Left = 428
    Top = 220
    Width = 178
    Height = 29
    Caption = 'Incluir Produto / Gravar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = btn_GravarClick
  end
  object Panel3: TPanel
    Left = 8
    Top = 260
    Width = 758
    Height = 4
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 14
  end
  object Panel4: TPanel
    Left = 0
    Top = 489
    Width = 780
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 11426061
    ParentBackground = False
    TabOrder = 15
    object Button3: TButton
      Left = 9
      Top = 5
      Width = 118
      Height = 32
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 1
    Height = 448
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel5'
    Color = 11426061
    ParentBackground = False
    TabOrder = 16
  end
  object Panel6: TPanel
    Left = 779
    Top = 41
    Width = 1
    Height = 448
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel5'
    Color = 11426061
    ParentBackground = False
    TabOrder = 17
  end
  object Edit12: TEdit
    Left = 654
    Top = 446
    Width = 118
    Height = 26
    Alignment = taRightJustify
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    Text = '0,00'
  end
end
