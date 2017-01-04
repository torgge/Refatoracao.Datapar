unit Datapar.Conexao.DOA;

interface

uses DB,
     Datapar.Conexao,
     OracleData, Oracle;

type
  TDOAQuery = class(TDataparQuery)
    strict private
      FConnection : TOracleSession;
      FQuery: TOracleDataSet;
    public
      constructor create(AProvider: TDataparProvider);
      function executaSql(ACommand: TDataparCommand): TDataSet; override;
  end;

implementation

{ TFireQuery }

constructor TDOAQuery.create(AProvider: TDataparProvider);
begin
  if FConnection = nil then
    begin
      FConnection := TOracleSession.Create(Nil);
      FConnection.LogonDatabase := AProvider.Host;
      FConnection.LogonUsername := AProvider.User;
      FConnection.LogonPassword := AProvider.Password;
    end;
  FConnection.Connected := True;
end;

function TDOAQuery.executaSql(ACommand: TDataparCommand): TDataSet;
begin
  FQuery:= TOracleDataSet.Create(Nil);
  FQuery.Session := FConnection;
  FQuery.SQL.Add(ACommand.SQL);
  FQuery.Open;
  Result := FQuery;
end;

end.
