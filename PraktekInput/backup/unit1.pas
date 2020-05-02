unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSimpan: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxIjazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnResetClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  Memo1.lines.Add(Edit1.Text);

  if(rgJenisKelamin.ItemIndex=0) then
  begin
    memo1.lines.add('Laki-laki');
  end
  else if(rgJenisKelamin.ItemIndex=1) then
  begin
    memo1.lines.add('Perempuan');
  end;

  Memo1.Lines.add(cbKota.Text);

  if(cbxFoto.Checked) then
   memo1.Lines.Add('Foto ada');

  if(cbxKTP.Checked) then
   memo1.Lines.Add('KTP ada');

  if(cbxIjazah.Checked) then
   memo1.Lines.Add('Ijazah ada');
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  Edit1.text:='';
  Memo1.Clear;
  rgJenisKelamin.ItemIndex:=-1;
  cbKota.ItemIndex:=-1;
  cbKota.Text:='';
  cbxFoto.Checked:=false;
  cbxKTP.Checked:=false;
  cbxIjazah.Checked:=false;
end;

end.

