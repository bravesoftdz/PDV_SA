object frmFechamentoCaixa: TfrmFechamentoCaixa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Pr'#233'via de Fechamento de Caixa(Resumo das Vedas)'
  ClientHeight = 351
  ClientWidth = 690
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object P_RESUMO: TPageControl
    Left = 0
    Top = 41
    Width = 690
    Height = 253
    ActivePage = TabSheet3
    Align = alTop
    TabOrder = 0
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'Total Caixa '
      object L_RESUMO_CAIXA: TLabel
        Left = 6
        Top = 200
        Width = 97
        Height = 15
        Caption = 'L_RESUMO_CAIXA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 13
        Width = 663
        Height = 173
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsResumoVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnKeyDown = FormKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'DT_ORCAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_PECAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Width = 152
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Total Por Vendedores'
      ImageIndex = 1
      object Label20: TLabel
        Left = 14
        Top = 200
        Width = 65
        Height = 17
        Caption = 'Total Geral'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object L_TOTAL_GERAL: TLabel
        Left = 150
        Top = 201
        Width = 24
        Height = 17
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid3: TDBGrid
        Left = 5
        Top = 3
        Width = 654
        Height = 174
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsVendasVendedor
        FixedColor = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid3DrawColumnCell
        OnKeyDown = FormKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDEDOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Width = 226
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Total Por Esp'#233'cie'
      ImageIndex = 2
      object Label41: TLabel
        Left = 14
        Top = 198
        Width = 156
        Height = 17
        Caption = 'Total do Usu'#225'rio Logado :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object L_TOTAL_GERAL1: TLabel
        Left = 191
        Top = 198
        Width = 24
        Height = 17
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid7: TDBGrid
        Left = 3
        Top = 0
        Width = 654
        Height = 176
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsEspecie
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid7DrawColumnCell
        OnKeyDown = FormKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Width = 181
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Trocas'
      ImageIndex = 3
      object Label36: TLabel
        Left = 6
        Top = 211
        Width = 146
        Height = 17
        Caption = 'Total Diferen'#231'a de Troca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 6
        Top = 192
        Width = 186
        Height = 17
        Caption = 'Quantidade de Pe'#231'as Trocadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 6
        Top = 174
        Width = 197
        Height = 17
        Caption = 'Quantidade de Pe'#231'as Devolvidas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object L_TOT_TROCA: TLabel
        Left = 219
        Top = 211
        Width = 7
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object L_QT_LEV: TLabel
        Left = 218
        Top = 192
        Width = 7
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object L_QTDEV: TLabel
        Left = 218
        Top = 174
        Width = 7
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 2
        Width = 667
        Height = 166
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsTrocas
        FixedColor = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid4DrawColumnCell
        OnKeyDown = FormKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NR_ORCAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_ORCAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_ORCAMENTO'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_DESCONTO'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_LIQUIDO'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Width = 167
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Total Por Pe'#231'as'
      ImageIndex = 4
      object Label2: TLabel
        Left = 6
        Top = 197
        Width = 122
        Height = 17
        Caption = 'Total Geral de Pe'#231'as'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object L_TOTAL_PECAS: TLabel
        Left = 227
        Top = 197
        Width = 7
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid5: TDBGrid
        Left = 1
        Top = 3
        Width = 667
        Height = 173
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsTotalPecas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid5DrawColumnCell
        OnKeyDown = FormKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'TOTAL_PECAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_UNIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Width = 347
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Total Geral do Caixa'
      ImageIndex = 5
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 668
        Height = 173
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsTotalGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyDown = FormKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'DT_ORCAMENTO'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Visible = True
          end>
      end
    end
  end
  object BB_SAIR: TBitBtn
    Left = 89
    Top = 296
    Width = 89
    Height = 53
    Caption = '(Esc) &Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
      4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
      4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
      4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
      41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
      575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
      43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
      6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
      C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
      65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
      D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
      6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
      D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
      76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
      FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
      4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
      4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 1
    OnClick = BB_SAIRClick
  end
  object BB_IMPRIMIR: TBitBtn
    Left = 0
    Top = 296
    Width = 89
    Height = 53
    Caption = 'Im&primir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF9F9D9EFF00FFFF00FFFF00FF8281818281818E8A
      8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F9D9E9F9D9ED4D1D196
      93933B393A545253999797C5C2C4D7D5D5828181FF00FFFF00FFFF00FFFF00FF
      9F9D9E9F9D9EFAFAFAFFFFFFD7D4D59E9C9C4443451C1C1E1C1C1F3534356766
      678281818E8A8BFF00FF918E8F9F9D9EF0EEEFFFFFFFEEEBEBCAC9C99F9D9E8E
      8A8A9793958786866463633C3B3D1F2022201F21747273FF00FF9C9899E9E7E7
      E5E5E5BDBBBBA6A4A4B4B1B1C2C1C1A4A1A19692939290909793959A98988E8A
      8B6B6A6A828181FF00FF959192ADABACA4A1A1B0AFAFC9C9C9D1D3D3EDEDEBF0
      EEF0DCDADAC5C4C4ADABAB9A98999390909793958E8A8BFF00FF918E8FAFADAF
      C9C7C7CECECEC9C9C9E2E2E2D1CFCFA1ABA1BDBCBCCBCECFD5D5D5D3D3D3C6C5
      C5B6B6B6989797FF00FFFF00FF9C999AD0D1D1CFCFCFDCDCDCC9C6C6B5B0B4A5
      D1A7BAC4BCC5A7A1ADA4A3000000000000000000000000FF00FFFF00FFFF00FF
      9C999AC1BFBFAFADADB1B0B0E3E3E3F6F3F3EEEDEEEDE1DEDCD8D8000000B4B4
      B40125FF000000FF00FFFF00FFFF00FFFF00FF9C999AD8DADACACACB9D9FA0BB
      BFC1D3D5D7D4D9D9D5D5D5000000AFADADFF00FF0125FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFBE5E1F8E0D4E9C9BDE3C7BDE2CCC7DED3CED0CECC0000000000
      000000000000000125FFFF00FFFF00FFFF00FFFF00FFCE9F9DFFDECEFFCFBDFF
      C4AFFFBAA3FFB199FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFCE9F9DFFDDCEFFCCBCFEC2B0FFBBA4F7A992FF00FF0000000000
      00000000000000FF00FFFF00FFFF00FFFF00FFFF00FFCE9F9DFFDDCEFFCCBCFE
      C2B0FEB8A3FAB099FF00FF000000FF00FF0125FF000000FF00FFFF00FFFF00FF
      FF00FFCE9F9DFAE0D5FFDACCFFCEBDFFC6B1FCB8A3F8AD99FF00FF000000FF00
      FFFF00FF0125FFFF00FFFF00FFFF00FFFF00FFCE9F9DCE9F9DCE9F9DCE9F9DF3
      AD9DF3AD9DFF00FFFF00FF0000000000000000000000000125FF}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 2
    OnClick = BB_IMPRIMIRClick
  end
  object Memo1: TMemo
    Left = 345
    Top = 65
    Width = 284
    Height = 193
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 41
    Align = alTop
    Color = 7715583
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    object Label17: TLabel
      Left = 4
      Top = 1
      Width = 591
      Height = 32
      Caption = 'Pr'#233'via de Fechamento de Caixa(Resumo das Vendas)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 651
      Top = 1
      Width = 38
      Height = 39
      Align = alRight
      Flat = True
      Glyph.Data = {
        42100000424D4210000000000000420000002800000020000000200000000100
        20000300000000100000307500003075000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003846F0123843
        F32D3442F4493543F4483843F32D3846F0120000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003443F7223642F47F3543F3CD3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F3CD3642F47E3443F7220000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000333FF2143543F4933642F3F93643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93543
        F490333FF2140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003543F6393643F3E73643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3642F3E63644F53800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003642
        F3553642F3F83643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3543F3F73642F355000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003740F5373642
        F3F93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3642F3F83740F5370000000000000000000000000000
        000000000000000000000000000000000000000000003048F2153543F4E83643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3542F3E5333FF21400000000000000000000
        000000000000000000000000000000000000000000003543F4933643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F49000000000000000000000
        0000000000000000000000000000000000003443F7223643F3FA3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF4854F5FF7B83F8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF7B83F8FF4854F5FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93645F721000000000000
        0000000000000000000000000000000000003543F3803643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF4854F5FFDEE0FDFFFEFEFFFF858DF8FF3643
        F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFDEE0FDFF4854F5FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F47E000000000000
        0000000000000000000000000000000000003642F3CF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF7B83F8FFFEFEFFFFFFFFFFFFFEFEFFFF858D
        F8FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF7B83F8FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F3CD000000000000
        00000000000000000000000000003543F1133643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFE
        FFFF858DF8FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3846F0120000
        00000000000000000000000000003641F42F3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFF
        FFFFFEFEFFFFFFFFFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3742F32E0000
        00000000000000000000000000003544F4473643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF858DF8FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3544F4470000
        00000000000000000000000000003544F4473643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3544F4470000
        00000000000000000000000000003641F42F3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFF
        FFFFFFFFFFFFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3742F32E0000
        00000000000000000000000000003543F1133643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFE
        FFFF858DF8FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3846F0120000
        0000000000000000000000000000000000003543F3D03643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF7B83F8FFFEFEFFFFFFFFFFFFFEFEFFFF858D
        F8FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF7B83F8FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3CE000000000000
        0000000000000000000000000000000000003543F3813643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF4854F5FFDEE0FDFFFEFEFFFF858DF8FF3643
        F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFDEE0FDFF4854F5FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F47F000000000000
        0000000000000000000000000000000000003241F0233643F3FA3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF4854F5FF7B83F8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF7B83F8FF4854F5FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F3FA3443F722000000000000
        000000000000000000000000000000000000000000003642F4953643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F49200000000000000000000
        000000000000000000000000000000000000000000003742F3173642F4EA3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3543F4E83048F21500000000000000000000
        00000000000000000000000000000000000000000000000000003543F6393642
        F3F93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3642F3F93740F5370000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003642
        F3553642F3F83643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3642F3F83642F355000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003441F13A3542F4E93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F3E73543F63900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003945F3163642F4953643F3FA3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93543
        F494333FF2140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003241F0233543F3803543F3D03643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3CF3543F3803241F0230000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000333FF2143742
        F32E3741F44A3442F4493843F32D3543F1130000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = SpeedButton3Click
      ExplicitLeft = 1102
      ExplicitTop = 5
      ExplicitHeight = 36
    end
  end
  object Panel2: TPanel
    Left = 178
    Top = 296
    Width = 509
    Height = 53
    BevelOuter = bvNone
    Color = 7715583
    ParentBackground = False
    TabOrder = 5
    object Label1: TLabel
      Left = 24
      Top = 6
      Width = 156
      Height = 37
      Caption = 'Total Geral :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_TOTAL_GERAL_CAIXA: TLabel
      Left = 357
      Top = 6
      Width = 55
      Height = 37
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qResumoVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_usuario'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  P.dt_orcamento,'
      '  P.ID_USUARIO,'
      '  U.LOGIN,'
      '  SUM(P.vl_liquido)AS TOTAL,'
      '   (  SELECT SUM(IP.quant) FROM tb_item_pdv IP'
      '      JOIN tb_pdv P ON (P.nr_orcamento = IP.nr_orcamento)'
      '                    WHERE P.DT_ORCAMENTO = :DT_VENDA'
      '                    AND IP.status <> '#39'C'#39
      '                    AND P.ID_USUARIO = :ID_USUARIO'
      '   ) -'
      ''
      '   (  SELECT SUM(IP.quant) FROM tb_item_pdv IP'
      '      JOIN tb_pdv P ON (P.nr_orcamento = IP.nr_orcamento)'
      '                    WHERE P.DT_ORCAMENTO = :DT_VENDA'
      '                    AND IP.status = '#39'L'#39' OR IP.status = '#39'D'#39
      '                    AND P.status = '#39'T'#39
      '                    AND P.ID_USUARIO = :ID_USUARIO'
      '   ) AS QUANT,'
      '  (SELECT SUM(IP.quant) FROM tb_item_pdv IP'
      '      JOIN tb_pdv P ON (P.nr_orcamento = IP.nr_orcamento)'
      '                    WHERE P.DT_ORCAMENTO =  :DT_VENDA'
      '                    AND IP.status ='#39'V'#39
      '                    AND P.ID_USUARIO = :ID_USUARIO)as QT_PECAS'
      'FROM tb_pdv P'
      'JOIN TB_USUARIOS U ON (U.ID_USUARIO = P.ID_USUARIO)'
      'WHERE P.DT_ORCAMENTO = :DT_VENDA'
      'AND P.caixa          = :CAIXA'
      'AND P.status <> '#39'E'#39' AND P.status <> '#39'T'#39' AND P.status <> '#39'A'#39
      'and p.ID_USUARIO = :id_usuario'
      'GROUP BY P.dt_orcamento,   U.LOGIN, P.ID_USUARIO'
      '')
    SQLConnection = DM.ConexaoLocal
    Left = 355
    Top = 56
    object qResumoVendasDT_ORCAMENTO: TDateField
      FieldName = 'DT_ORCAMENTO'
    end
    object qResumoVendasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qResumoVendasQUANT: TLargeintField
      FieldName = 'QUANT'
    end
    object qResumoVendasQT_PECAS: TLargeintField
      FieldName = 'QT_PECAS'
    end
    object qResumoVendasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qResumoVendasLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = []
      Size = 10
    end
  end
  object dspResumoVendas: TDataSetProvider
    DataSet = qResumoVendas
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 387
    Top = 56
  end
  object cdsResumoVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'dspResumoVendas'
    Left = 419
    Top = 56
    object cdsResumoVendasDT_ORCAMENTO: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DT_ORCAMENTO'
      EditMask = '##/##/####'
    end
    object cdsResumoVendasTOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsResumoVendasQUANT: TLargeintField
      DisplayLabel = 'Qt. Pe'#231'as'
      FieldName = 'QUANT'
    end
    object cdsResumoVendasQT_PECAS: TLargeintField
      DisplayLabel = 'Quat.Pe'#231'as'
      FieldName = 'QT_PECAS'
    end
    object cdsResumoVendasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsResumoVendasLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio Caixa'
      FieldName = 'LOGIN'
      ProviderFlags = []
      Size = 10
    end
  end
  object dsResumoVendas: TDataSource
    DataSet = cdsResumoVendas
    Left = 450
    Top = 56
  end
  object qVendasVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' p.ID_VENDEDOR AS CODIGO,'
      ' v.NOME as VENDEDOR,'
      ' sum(p.VL_LIQUIDO) as Total,'
      ' U.LOGIN'
      'from tb_pdv p'
      'JOIN TB_VENDEDOR v on (v.ID_VENDEDOR = p.ID_VENDEDOR)'
      'JOIN TB_USUARIOS U on (U.ID_USUARIO = p.ID_USUARIO)'
      'and p.DT_ORCAMENTO = :DT_VENDA'
      'AND P.STATUS = '#39'F'#39
      'AND P.ID_USUARIO = :ID_USUARIO'
      'group by'
      ' p.ID_VENDEDOR,v.NOME, U.LOGIN'
      'ORDER BY SUM(P.VL_LIQUIDO) DESC')
    SQLConnection = DM.ConexaoLocal
    Left = 355
    Top = 124
    object qVendasVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object qVendasVendedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ReadOnly = True
      Size = 30
    end
    object qVendasVendedorTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qVendasVendedorLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = []
      Size = 10
    end
  end
  object dspVendasVendedor: TDataSetProvider
    DataSet = qVendasVendedor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 387
    Top = 124
  end
  object cdsVendasVendedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendasVendedor'
    Left = 419
    Top = 124
    object cdsVendasVendedorCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object cdsVendasVendedorVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      ReadOnly = True
      Size = 30
    end
    object cdsVendasVendedorTOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsVendasVendedorLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio Caixa'
      FieldName = 'LOGIN'
      Size = 10
    end
  end
  object dsVendasVendedor: TDataSource
    DataSet = cdsVendasVendedor
    Left = 451
    Top = 124
  end
  object qEspecie: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_ORCAMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'TP.DESCRICAO_PAGAMENTO,'
      'SUM(P.vl_pagamento) AS TOTAL,'
      'U.LOGIN'
      'FROM tb_pagamento_pdv P'
      'JOIN tb_pdv PP ON (PP.id_pdv = P.id_pdv)'
      
        'JOIN TB_TIPO_PAGAMENTO TP ON (TP.ID_TIPO_PAGAMENTO = P.ID_TIPO_P' +
        'AGAMENTO)'
      'JOIN TB_USUARIOS U ON (U.ID_USUARIO = PP.ID_USUARIO)'
      'WHERE PP.dt_orcamento = :DT_ORCAMENTO'
      'and pp.STATUS <>'#39'E'#39
      'group BY'
      'TP.descricao_pagamento,U.LOGIN'
      'ORDER BY U.LOGIN')
    SQLConnection = DM.ConexaoLocal
    Left = 40
    Top = 57
    object qEspecieDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object qEspecieTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qEspecieLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
  end
  object dspEspecie: TDataSetProvider
    DataSet = qEspecie
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 70
    Top = 57
  end
  object cdsEspecie: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_ORCAMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspEspecie'
    Left = 100
    Top = 57
    object cdsEspecieDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Tipo Recebimento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object cdsEspecieTOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsEspecieLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio Caixa'
      FieldName = 'LOGIN'
      Size = 10
    end
  end
  object dsEspecie: TDataSource
    DataSet = cdsEspecie
    Left = 129
    Top = 58
  end
  object qTotalPecas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DT_FIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '    SELECT'
      '     SUM(IP.QUANT) AS TOTAL_PECAS,'
      '     IP.VL_UNIT,'
      '     U.LOGIN'
      '    FROM'
      '      TB_ITEM_PDV IP'
      '    JOIN TB_PDV P ON (P.NR_ORCAMENTO = IP.NR_ORCAMENTO)'
      '    JOIN TB_PRODUTO PR ON (PR.ID_PRODUTO = IP.ID_PRODUTO)'
      '    JOIN TB_USUARIOS U ON (U.ID_USUARIO = P.ID_USUARIO)'
      ''
      '  WHERE'
      '      IP.ID_LOJA = :PE_ID_LOJA'
      '    AND'
      '      IP.STATUS = '#39'V'#39
      '    AND'
      '       P.STATUS = '#39'F'#39
      '    AND'
      '      P.DT_ORCAMENTO BETWEEN :PE_DT_INI AND :PE_DT_FIN  '
      '    GROUP BY'
      '      IP.VL_UNIT,U.LOGIN'
      '    ORDER BY U.LOGIN')
    SQLConnection = DM.ConexaoLocal
    Left = 35
    Top = 169
    object qTotalPecasTOTAL_PECAS: TLargeintField
      FieldName = 'TOTAL_PECAS'
    end
    object qTotalPecasVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qTotalPecasLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
  end
  object dspTotalPecas: TDataSetProvider
    DataSet = qTotalPecas
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 67
    Top = 168
  end
  object cdsTotalPecas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DT_FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspTotalPecas'
    Left = 99
    Top = 168
    object cdsTotalPecasTOTAL_PECAS: TLargeintField
      DisplayLabel = 'Total de Pe'#231'as'
      FieldName = 'TOTAL_PECAS'
    end
    object cdsTotalPecasVL_UNIT: TFMTBCDField
      DisplayLabel = 'Valor Pe'#231'as'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsTotalPecasLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio Caixa'
      FieldName = 'LOGIN'
      Size = 10
    end
  end
  object dsTotalPecas: TDataSource
    DataSet = cdsTotalPecas
    Left = 131
    Top = 168
  end
  object qTroca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' TP.DESCRICAO_PAGAMENTO,'
      ' SUM(P.VL_PAGAMENTO)'
      'FROM TB_PAGAMENTO_PDV P'
      'JOIN TB_PDV PD ON (PD.ID_PDV = P.ID_PDV)'
      
        'JOIN TB_TIPO_PAGAMENTO TP ON (TP.ID_TIPO_PAGAMENTO = P.ID_TIPO_P' +
        'AGAMENTO)'
      'WHERE PD.DT_ORCAMENTO = :DT_MOV'
      'AND PD.STATUS ='#39'D'#39
      'AND PD.CAIXA = :CAIXA'
      'AND PD.ID_USUARIO = :ID_USUARIO'
      'GROUP BY TP.DESCRICAO_PAGAMENTO')
    SQLConnection = DM.ConexaoLocal
    Left = 42
    Top = 104
    object qTrocaDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object qTrocaSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 2
    end
  end
  object dspTroca: TDataSetProvider
    DataSet = qTroca
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 74
    Top = 104
  end
  object cdsTroca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'dspTroca'
    Left = 106
    Top = 104
    object cdsTrocaDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object cdsTrocaSUM: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'SUM'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsTroca: TDataSource
    DataSet = cdsTroca
    Left = 138
    Top = 104
  end
  object qTotalGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  P.dt_orcamento,'
      '  P.ID_USUARIO,'
      '  U.LOGIN,'
      '  SUM(P.vl_liquido) AS TOTAL'
      'FROM tb_pdv P'
      'LEFT OUTER JOIN TB_USUARIOS U ON (U.ID_USUARIO = P.ID_USUARIO)'
      'WHERE P.DT_ORCAMENTO = :DT_VENDA'
      'AND P.caixa          = :CAIXA'
      'AND P.status <> '#39'E'#39' AND P.status <> '#39'T'#39' AND P.status <> '#39'A'#39
      'GROUP BY  P.dt_orcamento,   U.LOGIN, P.ID_USUARIO')
    SQLConnection = DM.ConexaoLocal
    Left = 354
    Top = 176
    object qTotalGeralDT_ORCAMENTO: TDateField
      FieldName = 'DT_ORCAMENTO'
    end
    object qTotalGeralID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qTotalGeralLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object qTotalGeralTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object dspTotalGeral: TDataSetProvider
    DataSet = qTotalGeral
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 386
    Top = 176
  end
  object cdsTotalGeral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspTotalGeral'
    Left = 418
    Top = 176
    object cdsTotalGeralDT_ORCAMENTO: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DT_ORCAMENTO'
    end
    object cdsTotalGeralID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsTotalGeralLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio Caixa'
      FieldName = 'LOGIN'
      Size = 10
    end
    object cdsTotalGeralTOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsTotalGeral: TDataSource
    DataSet = cdsTotalGeral
    Left = 450
    Top = 176
  end
  object qTrocas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_ORCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' PDV.ID_PDV,'
      ' PDV.NR_ORCAMENTO,'
      ' PDV.ID_LOJA,'
      ' PDV.ID_USUARIO,'
      ' PDV.ID_GRUPO,'
      ' PDV.DT_ORCAMENTO,'
      ' PDV.VL_ORCAMENTO,'
      ' PDV.VL_DESCONTO,'
      ' PDV.VL_LIQUIDO,'
      ' PDV.STATUS,'
      ' PDV.TRANSF,'
      ' PDV.NOME_CLIENTE,'
      ' PDV.CPF_CLIENTE,'
      ' PDV.ID_VENDEDOR,'
      ' PDV.CAIXA,'
      ' V.NOME,'
      ' U.LOGIN'
      'FROM'
      ' TB_PDV PDV'
      'JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = PDV.ID_VENDEDOR)'
      'JOIN TB_USUARIOS U ON (U.ID_USUARIO = PDV.ID_USUARIO)'
      'WHERE'
      ' PDV.STATUS = '#39'D'#39
      'AND PDV.CAIXA = :CAIXA'
      'AND PDV.dt_orcamento = :DT_ORCAMENTO'
      'AND PDV.ID_USUARIO = :ID_USUARIO')
    SQLConnection = DM.ConexaoLocal
    Left = 544
    Top = 160
    object qTrocasID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object qTrocasNR_ORCAMENTO: TIntegerField
      FieldName = 'NR_ORCAMENTO'
      Required = True
    end
    object qTrocasID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object qTrocasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qTrocasID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object qTrocasDT_ORCAMENTO: TDateField
      FieldName = 'DT_ORCAMENTO'
    end
    object qTrocasVL_ORCAMENTO: TFMTBCDField
      FieldName = 'VL_ORCAMENTO'
      Precision = 18
      Size = 2
    end
    object qTrocasVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qTrocasVL_LIQUIDO: TFMTBCDField
      FieldName = 'VL_LIQUIDO'
      Precision = 18
      Size = 2
    end
    object qTrocasSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qTrocasTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object qTrocasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qTrocasCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 14
    end
    object qTrocasID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qTrocasCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qTrocasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qTrocasLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
  end
  object dspTrocas: TDataSetProvider
    DataSet = qTrocas
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 572
    Top = 161
  end
  object cdsTrocas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_ORCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'dspTrocas'
    Left = 599
    Top = 160
    object cdsTrocasID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object cdsTrocasNR_ORCAMENTO: TIntegerField
      DisplayLabel = 'N'#186' Troca'
      FieldName = 'NR_ORCAMENTO'
      Required = True
    end
    object cdsTrocasID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object cdsTrocasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsTrocasID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object cdsTrocasDT_ORCAMENTO: TDateField
      DisplayLabel = 'Data Or'#231'amento'
      FieldName = 'DT_ORCAMENTO'
      EditMask = '##/##/####'
    end
    object cdsTrocasVL_ORCAMENTO: TFMTBCDField
      DisplayLabel = 'Valor Troca'
      FieldName = 'VL_ORCAMENTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsTrocasVL_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Devolvido'
      FieldName = 'VL_DESCONTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsTrocasVL_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Valor Recebido'
      FieldName = 'VL_LIQUIDO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsTrocasSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsTrocasTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object cdsTrocasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsTrocasCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 14
    end
    object cdsTrocasID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsTrocasCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsTrocasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTrocasLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
  end
  object dsTrocas: TDataSource
    DataSet = cdsTrocas
    Left = 628
    Top = 161
  end
end
