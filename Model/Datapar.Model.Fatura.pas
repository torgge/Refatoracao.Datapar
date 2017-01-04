unit Datapar.Model.Fatura;

interface

uses DB,
     Datapar.Model.Main,
     Datapar.Conexao,
     Datapar.Conexao.Factory;

Type
  TModelFatura = class(TDataparModelMain)
  private
    fdstFatura: TDataparContext;
    function getdstFatura: TDataSet;
  public
    constructor Create;
    property dstFatura: TDataSet read getdstFatura;
  end;


implementation

{ TModelFatura }

constructor TModelFatura.Create;
begin
  inherited;
  fdstFatura := TDataparContext.Create(getInstance);
end;

function TModelFatura.getdstFatura: TDataSet;
begin
  Result := fdstFatura.executaSQL(TDataparCommand.create('Select * from FATFATU where rownum <= 10'));
end;

end.
