unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmCronometro = class(TForm)
    Timer1: TTimer;
    btnIncio: TButton;
    btnPause: TButton;
    btnSalvar: TButton;
    btnStop: TButton;
    grpTempo: TGroupBox;
    edtNome: TEdit;
    mskSolicitacao: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    lstValor: TListBox;
    procedure Timer1Timer(Sender: TObject);
    procedure btnIncioClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCronometro: TfrmCronometro;
  h, m, s: integer;

implementation

{$R *.dfm}

procedure TfrmCronometro.btnPauseClick(Sender: TObject);
begin
  Timer1.enabled := False;
  btnIncio.enabled := True;
end;

procedure TfrmCronometro.btnStopClick(Sender: TObject);
begin

  Timer1.enabled := False;

  ShowMessage('Qual solicitação tratada.:');

  lstValor.Items.Add(TimeToStr(Time));
  lstValor.Items.Add(DateToStr(date));
  lstValor.Items.Add(Label1.Caption);
  lstValor.Items.Add('               ');
  lstValor.Items.Add('Finalização!');
  lstValor.Items.Add('---------------');
  lstValor.Items.Add('               ');

  Label1.Caption := '00:00:00';
  btnIncio.enabled := True;
end;

procedure TfrmCronometro.btnIncioClick(Sender: TObject);
begin
  if (edtNome.Text = EmptyStr) then
  begin
    ShowMessage('Por Favor Inserir o Nome do Usuario!!');
    exit;
  end
  else
  begin
    mskSolicitacao.enabled := False;
    edtNome.enabled := False;

    Timer1.enabled := True;
    lstValor.Items.Add('Início');
    lstValor.Items.Add(edtNome.Text);
    mskSolicitacao.Text;
    lstValor.Items.Add(TimeToStr(Time));
    lstValor.Items.Add(DateToStr(date));
    lstValor.Items.Add('-------------');
    btnIncio.enabled := False;
  end;
end;

procedure TfrmCronometro.Timer1Timer(Sender: TObject);
begin
  Inc(s);
  if (m = 60) then
  begin
    Inc(h);
    m := 0;
  end;
  if (s = 60) then
  begin
    Inc(m);
    s := 0;
  end;

  Label1.Caption := Format('%.2d:%.2d:%.2d', [h, m, s]);
end;

end.
