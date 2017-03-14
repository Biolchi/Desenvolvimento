object frConexao: TfrConexao
  Left = 0
  Top = 0
  Caption = 'Conexao'
  ClientHeight = 373
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 16
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 128
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=sos'
      'DriverID=PG'
      'User_Name=postgres'
      'Password=atiladani')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 40
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'D:\Atila\TCC\Desenvolvimento\Executaveis'
    VendorLib = 'libpq.dll'
    Left = 200
    Top = 48
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 304
    Top = 48
  end
end
