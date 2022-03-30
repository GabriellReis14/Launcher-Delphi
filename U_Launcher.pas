unit U_Launcher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ComCtrls, U_Settings,
  UrlMon, ShellApi, Activex;

type
  TfrmLauncher = class(TForm)
    web: TWebBrowser;
    pnTop: TPanel;
    lblTitle: TLabel;
    lblTitle2: TLabel;
    pnButtons: TPanel;
    pnBtnJogar: TPanel;
    imgBtnJogar: TImage;
    btnJogar: TSpeedButton;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    pnBtnSair: TPanel;
    pnBtnOptions: TPanel;
    shpBtnOptions: TShape;
    btnOpcoes: TSpeedButton;
    shpBtnSair: TShape;
    btnSair: TSpeedButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnJogarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnOpcoesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure StartGame;
  end;

var
  frmLauncher: TfrmLauncher;

implementation

{$R *.dfm}


procedure TfrmLauncher.btnJogarClick(Sender: TObject);
begin
  StartGame;
  Close;
end;

procedure TfrmLauncher.btnOpcoesClick(Sender: TObject);
begin
  with TfrmOpcoes.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TfrmLauncher.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLauncher.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmLauncher.FormCreate(Sender: TObject);
var
  HD: THandle;
begin
  web.Navigate('https://www.mufreaks.com.br/news/');
  HD := CreateRoundRectRgn(0,0,Width,Height,40,40);
  SetWindowRgn(Handle,Hd,True);
  AlphaBlendValue:= 245;
  AlphaBlend:= True;
  KeyPreview:= True;

  UrlDownloadToFile(nil, PChar('https://www.mufreaks.com.br/launcher/Listagem.txt'),PChar(GetCurrentDir + '\Listagem.txt'), 0, nil);
end;

procedure TfrmLauncher.FormShow(Sender: TObject);
var
  arq: TStringList;
  i: integer;
begin
  arq:= TStringList.Create;

  arq.LoadFromFile(GetCurrentDir + '\List.txt');

  for i := 0 to arq.Count -1 do
  begin
    UrlDownloadToFile(nil, PChar('https://www.mufreaks.com.br/launcher/'+arq[i]),PChar(GetCurrentDir + '\' + arq[i]), 0, nil);
  end;

end;

procedure TfrmLauncher.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLauncher.StartGame;
begin
 try
  if FileExists(GetCurrentDir + '\Freaks.exe') then
      WinExec('Freaks.exe connect /u198.27.111.96 /p12005', SW_NORMAL)
  else
    Application.MessageBox('Não existe o arquivo Freaks.exe! Favor reinstalar o jogo e tentar novamente!','Atenção!', MB_ICONWARNING + MB_OK);
 except
   on E: Exception do
    raise Exception.Create('Não foi possível abrir o jogo! Contate o Administrador.'^m + 'Error Message');
 end;
end;

end.
