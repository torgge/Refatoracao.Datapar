unit Datapar.Conexao.FireDac;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Datapar.Conexao,
  FireDAC.Phys.OracleDef, FireDAC.Phys.Oracle, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.VCLUI.Wait;

type
  TFireQuery = class(TDataparQuery)
    strict private
      FConnection : TFDConnection;
      FQuery: TFDQuery;
    public
      constructor create(AProvider: TDataparProvider);
      function executaSql(ACommand: TDataparCommand): TDataSet; override;
  end;

implementation

{ TFireQuery }

constructor TFireQuery.create(AProvider: TDataparProvider);
begin
  if FConnection = nil then
    begin
      FConnection := TFDConnection.Create(Nil);
      FConnection.DriverName := 'ORA';
      FConnection.Params.Database := AProvider.Host;
      FConnection.Params.UserName := AProvider.User;
      FConnection.Params.Password := Aprovider.Password;
    end;
  FConnection.Connected := True;
end;

function TFireQuery.executaSql(ACommand: TDataparCommand): TDataSet;
begin
  FQuery:= TFDQuery.Create(Nil);
  FQuery.Connection := FConnection;
  FQuery.SQL.Add(ACommand.SQL);
  FQuery.Active := True;
  Result := FQuery;
end;

end.
