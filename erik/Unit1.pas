unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    LbNome: TLabel;
    EdtNome: TEdit;
    LbIdade: TLabel;
    EdtIdade: TEdit;
    ZQuery1: TZQuery;
    BtnSalvar: TButton;
    LbId: TLabel;
    EdtId: TEdit;
    BtnPesquisar: TButton;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnSalvarClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.add('Insert into pessoa');
ZQuery1.SQL.Add('(id,nome,idade)');
ZQuery1.SQL.Add('values (:id,:nome,:idade)');

ZQuery1.ParamByName('nome').AsString := EdtNome.Text;
ZQuery1.ParamByName('idade').AsInteger := StrToInt(EdtIdade.Text);
ZQuery1.ParamByName('id').AsInteger := StrToInt(EdtId.Text);


ZQuery1.ExecSQL;
  ShowMessage('Dados Salvos');

end;

procedure TForm1.BtnPesquisarClick(Sender: TObject);
begin
ZQuery1.SQL.Add('SELECT * FROM pessoa');
ZQuery1.Open;
ShowMessage('Tudo certo');
end;

end.
