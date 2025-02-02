object frm_Pesquisa: Tfrm_Pesquisa
  Left = 0
  Top = 0
  Caption = 'Pesquisa'
  ClientHeight = 322
  ClientWidth = 661
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 18
  object lbl_Cod_Cli: TLabel
    Left = 8
    Top = 13
    Width = 302
    Height = 23
    Caption = 'Informe c'#243'digo do cliente ou nome:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btn_OK: TSpeedButton
    Left = 559
    Top = 122
    Width = 104
    Height = 26
    Caption = 'Selecionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btn_OKClick
  end
  object btn_Pesquisar: TSpeedButton
    Left = 558
    Top = 76
    Width = 105
    Height = 26
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btn_PesquisarClick
  end
  object edt_Cod: TEdit
    Left = 8
    Top = 42
    Width = 545
    Height = 26
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = edt_CodKeyPress
  end
  object dbg_Listar: TDBGrid
    Left = 8
    Top = 72
    Width = 545
    Height = 241
    Align = alCustom
    DataSource = DM.ds_clientes
    DrawingStyle = gdsClassic
    FixedColor = clHighlightText
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbg_ListarDblClick
    OnKeyDown = dbg_ListarKeyDown
    OnKeyPress = dbg_ListarKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_cli'
        Title.Caption = 'C'#243'digo'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Title.Caption = 'UF'
        Visible = True
      end>
  end
end
