unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Lbl_Tela: TLabel;
    Btn_1: TButton;
    Btn_7: TButton;
    Btn_8: TButton;
    Btn_9: TButton;
    Btn_Mult: TButton;
    Btn_4: TButton;
    Btn_5: TButton;
    Btn_6: TButton;
    Btn_Sub: TButton;
    Btn_3: TButton;
    Btn_Soma: TButton;
    Btn_2: TButton;
    Btn_0: TButton;
    Btn_Igual: TButton;
    Btn_Limpar: TButton;
    Btn_Div: TButton;
    procedure Btn_1Click(Sender: TObject);
    procedure Btn_2Click(Sender: TObject);
    procedure Btn_3Click(Sender: TObject);
    procedure Btn_4Click(Sender: TObject);
    procedure Btn_5Click(Sender: TObject);
    procedure Btn_6Click(Sender: TObject);
    procedure Btn_7Click(Sender: TObject);
    procedure Btn_8Click(Sender: TObject);
    procedure Btn_9Click(Sender: TObject);
    procedure Btn_0Click(Sender: TObject);
    procedure Btn_SomaClick(Sender: TObject);
    procedure Btn_IgualClick(Sender: TObject);
    procedure Btn_LimparClick(Sender: TObject);
    procedure Btn_SubClick(Sender: TObject);
    procedure Btn_MultClick(Sender: TObject);
    procedure Btn_DivClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Valor1: double;
  Valor2: double;
  Operacao: string;

implementation

{$R *.dfm}

procedure TForm1.Btn_0Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '0';
end;

procedure TForm1.Btn_1Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '1';
end;

procedure TForm1.Btn_2Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '2';
end;

procedure TForm1.Btn_3Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '3';
end;

procedure TForm1.Btn_4Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '4';
end;

procedure TForm1.Btn_5Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '5';
end;

procedure TForm1.Btn_6Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '6';
end;

procedure TForm1.Btn_7Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '7';
end;

procedure TForm1.Btn_8Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '8';
end;

procedure TForm1.Btn_9Click(Sender: TObject);
begin
      Lbl_Tela.Caption := Lbl_Tela.Caption + '9';
end;

procedure TForm1.Btn_DivClick(Sender: TObject);
begin
      Operacao := 'dividir';
      Valor1 := StrToFloat(Lbl_Tela.Caption);
      Lbl_Tela.Caption := '';
end;

procedure TForm1.Btn_IgualClick(Sender: TObject);
begin
      Valor2 := StrToFloat(Lbl_Tela.Caption);
      if Operacao = 'somar' then
      begin
            Lbl_Tela.Caption := FloatToStr(Valor1 + Valor2);
      end;

      if Operacao = 'subtrair' then
      begin
            Lbl_Tela.Caption := FloatToStr(Valor1 - Valor2);
      end;

      if Operacao = 'multiplicar' then
      begin
            Lbl_Tela.Caption := FloatToStr(Valor1 * Valor2);
      end;

        if Operacao = 'dividir' then
      begin
            Lbl_Tela.Caption := FloatToStr (Valor1 / Valor2);
      end;
end;

procedure TForm1.Btn_LimparClick(Sender: TObject);
begin
      Lbl_Tela.Caption := '';
end;

procedure TForm1.Btn_MultClick(Sender: TObject);
begin
      Operacao := 'multiplicar';
      Valor1 := StrToFloat(Lbl_Tela.Caption);
      Lbl_Tela.Caption := '';
end;

procedure TForm1.Btn_SomaClick(Sender: TObject);
begin
      Operacao := 'somar';
      Valor1 := StrToFloat(Lbl_Tela.Caption);
      Lbl_Tela.Caption := '';
end;

procedure TForm1.Btn_SubClick(Sender: TObject);
begin
      Operacao := 'subtrair';
      Valor1 := StrToFloat(Lbl_Tela.Caption);
      Lbl_Tela.Caption := '';
end;

end.
