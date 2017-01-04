unit Datapar.Model.Main;

interface

uses
  Datapar.Conexao,
  Datapar.Conexao.Factory;

type
  TDataparModelMain = class
  private
    { Private declarations }
    fModoConexao: TDataparModoConexao;
    fProvider: TDataparProvider;
  protected
    function getInstance: TDataparQuery;
  public
    { Public declarations }
    constructor Create;
  end;

var
  DMConexao: TDataparModelMain;

implementation

constructor TDataparModelMain.Create;
begin
  fModoConexao := mcDOA;
  fProvider    := TDataparProvider.create('DATAPAR.DESENV.COM','geo_colonial','supergeo_colonial','Oracle');
end;

function TDataparModelMain.getInstance: TDataparQuery;
begin
  Result := TDataparFactory.CreateInstance(fModoConexao,fProvider);
end;

end.
