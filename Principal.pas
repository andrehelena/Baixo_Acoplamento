unit Principal;

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
	Vcl.StdCtrls,
	Vcl.ExtCtrls;

type
	TForm_Principal = class(TForm)
		Panel1 : TPanel;
		Button1 : TButton;
		Button2 : TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
		private
			procedure eventoTeste(Sender: TObject);
		public
			{ Public declarations }
	end;

var
	Form_Principal : TForm_Principal;

implementation

uses
  Secundario;


{$R *.dfm}

procedure TForm_Principal.Button1Click(Sender: TObject);
begin
	if not Assigned(Form_Secundario) then
  	Form_Secundario := TForm_Secundario.Create(Self, eventoTeste);
	Form_Secundario.ShowModal;
  FreeAndNil(Form_Secundario);
end;

procedure TForm_Principal.Button2Click(Sender: TObject);
begin
	if not Assigned(Form_Secundario) then
  	Form_Secundario := TForm_Secundario.Create(Self);
	Form_Secundario.ShowModal;
  FreeAndNil(Form_Secundario);
end;

procedure TForm_Principal.eventoTeste(Sender: TObject);
begin
	Form_Principal.Color := clRed;
end;

end.
