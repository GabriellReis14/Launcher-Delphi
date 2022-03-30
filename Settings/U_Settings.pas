unit U_Settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Registry,
  Vcl.ComCtrls;

type
  TfrmOpcoes = class(TForm)
    pnSettings: TPanel;
    edtAccountID: TEdit;
    lblAccountID: TLabel;
    rgResolution: TRadioGroup;
    lblResolution: TLabel;
    chkWindowMode: TCheckBox;
    chkMusic: TCheckBox;
    chkSound: TCheckBox;
    pnCancel: TPanel;
    shpCancel: TShape;
    pnConfirm: TPanel;
    shpBtnOk: TShape;
    btnOk: TSpeedButton;
    btnCancel: TSpeedButton;
    trackBar: TTrackBar;
    lblVolume: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    Registro: TRegistry;
  public
    { Public declarations }
  end;

var
  frmOpcoes: TfrmOpcoes;

implementation

{$R *.dfm}

procedure TfrmOpcoes.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOpcoes.btnOkClick(Sender: TObject);
begin
  Registro := TRegistry.Create;

  Registro.RootKey := HKEY_CURRENT_USER;

  Registro.OpenKey('Software\Webzen\Mu\Config', True);

  Registro.WriteString('ID', edtAccountID.Text);

  case rgResolution.ItemIndex of
    0: Registro.WriteInteger('Resolution', 0);
    1: Registro.WriteInteger('Resolution', 1);
    2: Registro.WriteInteger('Resolution', 2);
    3: Registro.WriteInteger('Resolution', 3);
    4: Registro.WriteInteger('Resolution', 4);
    5: Registro.WriteInteger('Resolution', 5);
    6: Registro.WriteInteger('Resolution', 6);
  end;

   if chkWindowMode.Checked then
    Registro.WriteInteger('WindowMode', 1)
  else
    Registro.WriteInteger('WindowMode', 0);

  if chkSound.Checked then
    Registro.WriteInteger('SoundOnOff', 1)
  else
    Registro.WriteInteger('SoundOnOff', 0);

  if chkMusic.Checked then
    Registro.WriteInteger('MusicOnOff', 1)
  else
    Registro.WriteInteger('MusicOnOff', 0);

  Registro.WriteInteger('VolumeLevel', trackBar.Position);


  Registro.CloseKey;

  Registro.Free;

  Close;
end;

procedure TfrmOpcoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmOpcoes.FormCreate(Sender: TObject);
var
  HD: THandle;
begin
  HD := CreateRoundRectRgn(0,0,Width,Height,40,40);
  SetWindowRgn(Handle,Hd,True);
  AlphaBlendValue:= 245;
  AlphaBlend:= True;
  KeyPreview:= True;

  Registro:= TRegistry.Create;

  Registro.RootKey:= HKEY_CURRENT_USER;

  Registro.OpenKey('Software\Webzen\Mu\Config', True);

  edtAccountID.Text := Registro.ReadString('ID');

  case Registro.ReadInteger('Resolution') of
    0: rgResolution.ItemIndex:= 0;
    1: rgResolution.ItemIndex:= 1;
    2: rgResolution.ItemIndex:= 2;
    3: rgResolution.ItemIndex:= 3;
    4: rgResolution.ItemIndex:= 4;
    5: rgResolution.ItemIndex:= 5;
    6: rgResolution.ItemIndex:= 6;
  end;

  case Registro.ReadInteger('SoundOnOff') of
    0: chkSound.Checked:= False;
    1: chkSound.Checked:= True;
  end;

  case Registro.ReadInteger('MusicOnOff') of
    0: chkMusic.Checked:= False;
    1: chkMusic.Checked:= True;
  end;

  case Registro.ReadInteger('WindowMode') of
    0: chkWindowMode.Checked:= False;
    1: chkWindowMode.Checked:= True;
  end;

  trackbar.Position:= Registro.ReadInteger('VolumeLevel');

  Registro.CloseKey;

  Registro.Free;
end;

end.
