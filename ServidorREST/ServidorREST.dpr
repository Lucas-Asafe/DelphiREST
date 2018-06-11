program ServidorREST;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ufrmPrincipal in 'ufrmPrincipal.pas' {Form1},
  uSM in 'uSM.pas' {SM: TDSServerModule},
  uWM in 'uWM.pas' {WM: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
