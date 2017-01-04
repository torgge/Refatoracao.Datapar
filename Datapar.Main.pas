unit Datapar.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses Datapar.View.Fatura;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  frmFatura : TfrmFatura;
begin
  Try
    frmFatura := TfrmFatura.Create(Nil);
    frmFatura.ShowModal;
  Finally
    frmFatura.Free;
  End;
end;

end.
