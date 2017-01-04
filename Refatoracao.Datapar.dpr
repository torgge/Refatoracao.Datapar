program Refatoracao.Datapar;

uses
  Vcl.Forms,
  Datapar.Main in 'Datapar.Main.pas' {frmMain},
  Datapar.Conexao.DBExpress in 'Model\Adapter\Datapar.Conexao.DBExpress.pas',
  Datapar.Conexao.Factory in 'Model\Adapter\Datapar.Conexao.Factory.pas',
  Datapar.Conexao.FireDac in 'Model\Adapter\Datapar.Conexao.FireDac.pas',
  Datapar.Conexao in 'Model\Adapter\Datapar.Conexao.pas',
  Datapar.Model.Fatura in 'Model\Datapar.Model.Fatura.pas',
  Datapar.Model.Main in 'Model\Datapar.Model.Main.pas',
  Datapar.Conexao.DOA in 'Model\Adapter\Datapar.Conexao.DOA.pas',
  Datapar.ViewModel.Fatura in 'ViewModel\Datapar.ViewModel.Fatura.pas',
  Datapar.View.Fatura in 'View\Datapar.View.Fatura.pas' {frmFatura};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
