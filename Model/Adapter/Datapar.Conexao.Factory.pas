unit Datapar.Conexao.Factory;

interface

uses
  Data.DB,
  Datapar.Conexao,
  Datapar.Conexao.FireDac,
  Datapar.Conexao.DbExpress,
  Datapar.Conexao.DOA;

type
  TDataparFactory = class
  public class function CreateInstance(AModo: TDataparModoConexao; AProvider: TDataparProvider): TDataparQuery;
  end;

implementation

{ TDataparFactory }

class function TDataparFactory.CreateInstance(
  AModo: TDataparModoConexao; AProvider: TDataparProvider): TDataparQuery;
begin
  case AModo of
    mcFireDac:   Result := TFireQuery.create(AProvider);
    mcDBExpress: Result := TExpressQuery.create(AProvider);
    mcUniDac:    Result := Nil;
    mcDOA:       Result := TDoaQuery.Create(AProvider)
  end;
end;

end.
