unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    BtnPesquisar: TBitBtn;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtnPesquisarClick(Sender: TObject);
begin
ZQuery1.SQL.Add('SELECT * FROM pessoa');
ZQuery1.Open;
end;

end.
