unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmMain = class(TForm)
    BtnLoadMapOle: TButton;
    BtnLoadMapIntf: TButton;
    EdtMapToLoad: TLabeledEdit;
    MmoReadMe: TMemo;
    BtnSelectMap: TButton;
    OpenDialog: TOpenDialog;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnLoadMapOleClick(Sender: TObject);
    procedure BtnLoadMapIntfClick(Sender: TObject);
    procedure BtnSelectMapClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses
  System.Win.ComObj, MaptitudeTypeLibrary_TLB, ActiveX;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
  CoInitialize(nil);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  CoUninitialize;
end;

procedure TFrmMain.BtnLoadMapOleClick(Sender: TObject);
var
  mapt: OleVariant;
  opts: OleVariant;
begin
  if EdtMapToLoad.Text = EmptyStr then
  begin
    ShowMessage('Select map first!');
    Exit;
  end;

  mapt := CreateOleObject('Maptitude.AutomationServer');
  opts := VarArrayCreate([0, -1], varVariant); // create empty variant array
  mapt.RunMacro('OpenMap', EdtMapToLoad.Text, opts);
end;

procedure TFrmMain.BtnLoadMapIntfClick(Sender: TObject);
var
  o: IMaptitude;
  opt, opt1: Variant;
begin
  if EdtMapToLoad.Text = EmptyStr then
  begin
    ShowMessage('Select map first!');
    Exit;
  end;

  o := CoMaptitude.Create;
  opt := Null;
  opt1 := VarAsError(0);
  o.RunMacro('OpenMap', EdtMapToLoad.Text, opt, opt1, opt1, opt1, opt1, opt1, opt1, opt1);
end;

procedure TFrmMain.BtnSelectMapClick(Sender: TObject);
begin
  if OpenDialog.Execute then
    EdtMapToLoad.Text := OpenDialog.FileName;
end;

end.
