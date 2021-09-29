unit Secundario;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.StdCtrls;

type
	TForm_Secundario = class(TForm)
		Button_LetsGo : TButton;
		procedure FormCreate(Sender : TObject);
		procedure Button_LetsGoClick(Sender : TObject);
		private
			{ Private declarations }
		public
			constructor Create(AOwner : TComponent; Event : TNotifyEvent); reintroduce; overload;
	end;

var
	Form_Secundario : TForm_Secundario;

implementation

{$R *.dfm}


procedure TForm_Secundario.Button_LetsGoClick(Sender : TObject);
begin
	Form_Secundario.Color := clYellow;
end;

constructor TForm_Secundario.Create(AOwner : TComponent; Event : TNotifyEvent);
begin
	Create(AOwner);
	Button_LetsGo.OnClick := Event;
end;

procedure TForm_Secundario.FormCreate(Sender : TObject);
begin
	//
  Form_Principal.Color := clRed;
end;

end.
