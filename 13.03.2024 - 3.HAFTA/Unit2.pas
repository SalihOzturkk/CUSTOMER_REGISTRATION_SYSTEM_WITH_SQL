unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
sql:string;
kontrol:string;

begin
///KAYIT YAPMA /////
kontrol:='SELECT COUNT (*) FROM TABLO1 WHERE ADI ="'+
edit1.Text+'" AND SOYADI="'+Edit2.Text+'"';
// SELECT COUNT * KOMUTU �LE SAYILAN VE BULUNAN ELEMAN TEK T�P SAYI YAN�
// GER�YE D�ND�RD��� DE�ER B�R TANE OLACA�INDAN DOLAYI  ADOQuery1.Fields[0] SANAL
// ALAN ADI OLU�TURACA�INDAN DOLAYI GER�YE D�ND�R�LEN DE�ER� STR�NGE
// YAN� kontrol'E ATILMASI GEREK�R.
ADOQuery1.SQL.Text :=kontrol;
ADOQuery1.Open;
kontrol := IntToStr(ADOQuery1.Fields[0].AsInteger );
if (StrToInt(kontrol)>0) then begin
ADOQuery1.SQL.Text :='SELECT * FROM TABLO1';
ADOQuery1.Open;
ShowMessage('ARADI�INIZ K��� S�STEMDE VARDIR')
end else begin
ADOQuery1.Close ; ADOQuery1.SQL.Clear ;
ADOQuery1.SQL.Add('INSERT INTO TABLO1 (ADI,SOYADI,MEMLEKET)');
ADOQuery1.SQL.Add('VALUES("'+Edit1.Text+'","'+Edit2.Text+'","'+ComboBox1.Text+'")');
ADOQuery1.ExecSQL;
///L�STELEME (DBGR�D G�NCELLEMES�) ///
sql:='SELECT * FROM TABLO1';
ADOQuery1.SQL.Text :='SELECT * FROM TABLO1';
ADOQuery1.Open;
end;
end;
end.
