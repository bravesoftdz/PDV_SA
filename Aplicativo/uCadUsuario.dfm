object frmCadUsuario: TfrmCadUsuario
  Left = 272
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 483
  ClientWidth = 555
  Color = 7715583
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object P_LOGIN: TPanel
    Left = 7
    Top = 89
    Width = 544
    Height = 192
    BevelOuter = bvNone
    Color = 7715583
    Enabled = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 4
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 66
      Top = 4
      Width = 28
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 4
      Top = 86
      Width = 31
      Height = 13
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 116
      Top = 86
      Width = 78
      Height = 13
      Caption = 'Confirmar Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 329
      Top = 4
      Width = 26
      Height = 13
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 2
      Top = 51
      Width = 42
      Height = 13
      Caption = 'C'#243'd Loja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 67
      Top = 51
      Width = 72
      Height = 13
      Caption = 'Loja Associado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 376
      Top = 104
      Width = 23
      Height = 22
      Visible = False
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 2
      Top = 49
      Width = 51
      Height = 13
      Caption = 'C'#243'd Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label9: TLabel
      Left = 69
      Top = 49
      Width = 75
      Height = 13
      Caption = 'Nome do Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object SpeedButton2: TSpeedButton
      Left = 377
      Top = 72
      Width = 23
      Height = 22
      Visible = False
      OnClick = SpeedButton2Click
    end
    object DBEdit2: TDBEdit
      Left = 2
      Top = 18
      Width = 65
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'ID_USUARIO'
      DataSource = DM.dsLogin
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 66
      Top = 18
      Width = 262
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NOME_USUARIO'
      DataSource = DM.dsLogin
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBE_SENHA: TDBEdit
      Left = 4
      Top = 100
      Width = 105
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'SENHA'
      DataSource = DM.dsLogin
      ParentCtl3D = False
      PasswordChar = '*'
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object ME_SENHA: TMaskEdit
      Left = 116
      Top = 100
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      PasswordChar = '*'
      TabOrder = 6
      Text = ''
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 3
      Top = 132
      Width = 536
      Height = 53
      Caption = 'N'#237'vel de Acesso'
      Color = clWhite
      Columns = 3
      Ctl3D = False
      DataField = 'NIVEL_ACESSO'
      DataSource = DM.dsLogin
      Items.Strings = (
        'Administrador'
        'Caixa')
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 7
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
    object DBEdit1: TDBEdit
      Left = 329
      Top = 18
      Width = 210
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'LOGIN'
      DataSource = DM.dsLogin
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 2
      Top = 65
      Width = 64
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'ID_LOJA'
      DataSource = DM.dsLogin
      ParentCtl3D = False
      TabOrder = 4
      OnExit = DBEdit4Exit
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 69
      Top = 65
      Width = 472
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'R_SOCIAL'
      DataSource = DM.dsLogin
      ParentCtl3D = False
      TabOrder = 8
      OnKeyPress = FormKeyPress
    end
    object DBEdit6: TDBEdit
      Left = 2
      Top = 65
      Width = 64
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
      OnExit = DBEdit6Exit
      OnKeyPress = DBEdit6KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 67
      Top = 65
      Width = 472
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      Visible = False
      OnKeyPress = FormKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 287
    Width = 544
    Height = 170
    Ctl3D = False
    DataSource = DM.dsLogin
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_USUARIO'
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGIN'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_LOJA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_SOCIAL'
        Width = 177
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 7
    Top = 461
    Width = 212
    Height = 18
    DataSource = DM.dsLogin
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 25
    Align = alTop
    Caption = 'Cadastro de Usu'#225'rios'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = 7715583
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object SpeedButton3: TSpeedButton
      Left = 531
      Top = 1
      Width = 23
      Height = 23
      Align = alRight
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF9999FFFFFFF9999FF9999FFFFF9999FFFF9999FFF9999FFFFF99999F9999
        9FFFFFF999999999FFFFFFFF9999999FFFFFFFFFF99999FFFFFFFFFFF99999FF
        FFFFFFFF9999999FFFFFFFF999999999FFFFFFF9999F9999FFFFFF9999FFF999
        9FFFF9999FFFFF9999FF9999FFFFFFF9999FFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton3Click
      ExplicitLeft = 772
      ExplicitTop = 0
    end
  end
  object ToolBar1: TToolBar
    Left = 5
    Top = 26
    Width = 546
    Height = 57
    Align = alNone
    ButtonHeight = 52
    ButtonWidth = 68
    Caption = 'ToolBar1'
    Images = DM.I_BOTOES
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 4
    Transparent = True
    object TB_INCLUIR: TToolButton
      Left = 0
      Top = 0
      Caption = '&Incluir'
      ImageIndex = 4
      OnClick = TB_INCLUIRClick
    end
    object TB_ALTERAR: TToolButton
      Left = 68
      Top = 0
      Caption = '&Alterar'
      ImageIndex = 0
      OnClick = TB_ALTERARClick
    end
    object TB_CANCELAR: TToolButton
      Left = 136
      Top = 0
      Caption = '&Cancelar'
      ImageIndex = 1
      OnClick = TB_CANCELARClick
    end
    object TB_SALVAR: TToolButton
      Left = 204
      Top = 0
      Caption = '&Salvar '
      ImageIndex = 2
      OnClick = TB_SALVARClick
    end
    object TB_EXCLUIR: TToolButton
      Left = 272
      Top = 0
      Caption = 'E&xcluir'
      ImageIndex = 5
      OnClick = TB_EXCLUIRClick
    end
    object TB_PESQUISAR: TToolButton
      Left = 340
      Top = 0
      Caption = '  &Pesquisar   '
      ImageIndex = 6
      OnClick = TB_PESQUISARClick
    end
    object TB_SAIR: TToolButton
      Left = 408
      Top = 0
      Caption = 'Sai&r'
      ImageIndex = 7
      OnClick = TB_SAIRClick
    end
  end
end
