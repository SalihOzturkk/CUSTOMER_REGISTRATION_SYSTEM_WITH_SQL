unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TForm1 = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Button2: TButton;
    ADOTable3: TADOTable;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ADOTable1.ConnectionString :='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=AKBANK';
ADOTable1.TableName :='Table_1';
DataSource1.DataSet :=ADOTable1 ;
DBGrid1.DataSource :=DataSource1 ;
ADOTable1.Active :=true ;
//ADOTable1.Open ;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ADOTable2.ConnectionString :='Provider =Microsoft.Ace.Oledb.12.0; Data Source=bilgiler1.accdb';
ADOTable2.TableName :='Tablo1';
DataSource2.DataSet :=ADOTable2 ;
DBGrid2.DataSource :=DataSource2 ;
ADOTable2.Open ;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ADOTable3.ConnectionString :='Provider =Microsoft.Jet.Oledb.4.0; Data Source=bilgiler2.mdb';
ADOTable3.TableName :='Tablo1';
DataSource3.DataSet :=ADOTable3 ;
DBGrid3.DataSource :=DataSource3 ;
ADOTable3.Open ;
end;

end.
