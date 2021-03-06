unit uSM;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth;

type
  TSM = class(TDSServerModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function GetDateTime(): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils, System.DateUtils;

function TSM.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TSM.GetDateTime: string;
begin
  Result := DateTimeToStr(Now);
end;

function TSM.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

