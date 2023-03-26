unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, CheckLst, XPMan, ExtCtrls, Math;

type
  TForm1 = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    CHK1: TCheckListBox;
    xpmnfst1: TXPManifest;
    lbl2_3: TLabel;
    chk2_3: TCheckBox;
    chk2_4: TCheckBox;
    chk2_5: TCheckBox;
    lbl2_4: TLabel;
    chk2_7: TCheckBox;
    chk2_8: TCheckBox;
    chk2_10: TCheckBox;
    lbl2_5: TLabel;
    chk2_11: TCheckBox;
    chk2_12: TCheckBox;
    chk2_13: TCheckBox;
    lbl2_6: TLabel;
    chk2_14: TCheckBox;
    chk2_15: TCheckBox;
    chk2_16: TCheckBox;
    bvl3: TBevel;
    bvl4: TBevel;
    bvl5: TBevel;
    bvl6: TBevel;
    ts3: TTabSheet;
    chk3_0: TCheckBox;
    lbl3_1: TLabel;
    bvl7: TBevel;
    chk3_1: TCheckBox;
    chk3_2: TCheckBox;
    chk3_3: TCheckBox;
    chk3_4: TCheckBox;
    chk3_5: TCheckBox;
    chk3_6: TCheckBox;
    chk3_7: TCheckBox;
    lbl3_3: TLabel;
    chk3_8: TCheckBox;
    chk3_9: TCheckBox;
    chk3_10: TCheckBox;
    bvl9: TBevel;
    ts4: TTabSheet;
    lblGP: TLabel;
    bvl10: TBevel;
    bvl12: TBevel;
    mmGP: TMemo;
    lblGPP: TLabel;
    chk2_9: TCheckBox;
    pgc0: TPageControl;
    ts0: TTabSheet;
    ts01: TTabSheet;
    pgc2: TPageControl;
    ts2_1: TTabSheet;
    ts2_2: TTabSheet;
    ts2_3: TTabSheet;
    ts2_4: TTabSheet;
    CHK2: TCheckListBox;
    lbl22_0: TLabel;
    chk22_0: TCheckBox;
    bvl20: TBevel;
    chk22_1: TCheckBox;
    chk22_2: TCheckBox;
    bvl21: TBevel;
    lbl22_1: TLabel;
    chk22_3: TCheckBox;
    chk22_4: TCheckBox;
    chk22_5: TCheckBox;
    chk22_6: TCheckBox;
    bvl22: TBevel;
    lbl22_2: TLabel;
    chk22_7: TCheckBox;
    chk22_8: TCheckBox;
    chk22_9: TCheckBox;
    bvl23: TBevel;
    lbl22_3: TLabel;
    chk22_10: TCheckBox;
    chk22_11: TCheckBox;
    chk22_12: TCheckBox;
    bvl30: TBevel;
    chk23_0: TCheckBox;
    lbl23_0: TLabel;
    chk23_1: TCheckBox;
    chk23_2: TCheckBox;
    chk23_3: TCheckBox;
    chk23_4: TCheckBox;
    bvl31: TBevel;
    lbl23_1: TLabel;
    chk23_5: TCheckBox;
    chk23_6: TCheckBox;
    chk23_7: TCheckBox;
    chk23_8: TCheckBox;
    mmST: TMemo;
    lblSTP: TLabel;
    bvl1: TBevel;
    bvl2: TBevel;
    lblST: TLabel;
    lbl3_2: TLabel;
    lbl32_4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ts4Show(Sender: TObject);
    procedure ts2_4Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    gp_mass : array [0..4,0..49] of Boolean; // Гипертония, массив данных
    st_mass : array [0..4,0..49] of Boolean; // Стенокардия, массив данных
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i,j:Integer;
begin
  // Статусы false - нет, true - да
  for i := 0 to 4 do
    // При иницилизации приложения обнуляем статусы опроса
    for  j := 0 to 49 do
    begin
      gp_mass[i,j] := False;
      st_mass[i,j] := False;
    end;
//===Гипертония=========================================
  CHK1.Items.Add('Частая головная боль');
  gp_mass[0,0] := True;
  //-----------------------
  CHK1.Items.Add('Боль не проходит при приеме обезболивающих таблеток');
  gp_mass[0,1] := True;
  //-----------------------
  CHK1.Items.Add('Головокружение');
  gp_mass[0,2] := True;
  //-----------------------
  CHK1.Items.Add('Тяжесть в голове');
  gp_mass[0,3] := True;
  //-----------------------
  CHK1.Items.Add('Кровотечение из носа');
  gp_mass[0,4] := True;
  //-----------------------
  CHK1.Items.Add('Звон в ушах');
  gp_mass[0,5] := True;
  //-----------------------
  CHK1.Items.Add('Снижение зрения');
  gp_mass[0,6] := True;
  //-----------------------
  CHK1.Items.Add('Снижение концентрации внимания');
  gp_mass[0,7] := True;
  //-----------------------
  CHK1.Items.Add('Боль в груди');
  gp_mass[0,8] := True;
  //-----------------------
  CHK1.Items.Add('Тошнота');
  gp_mass[0,9] := True;
  //-----------------------
  CHK1.Items.Add('Сильное сердцебиение');
  gp_mass[0,10] := True;
  //-----------------------
  CHK1.Items.Add('Уменьшаться чувствительность рук');
  gp_mass[0,11] := True;
  //-----------------------
  CHK1.Items.Add('ЧСС выше 75 уд/мин');
  gp_mass[0,12] := True;
  //-----------------------
  CHK1.Items.Add('Систолическое давление более 140 мм рт. ст');
  gp_mass[0,13] := True;
  //-----------------------
  CHK1.Items.Add('Стабильное повышение АД ');
  gp_mass[0,14] := True;
  //-----------------------
  CHK1.Items.Add('Частые скачки кровяного давления');
  gp_mass[0,15] := True;
  //-----------------------
  CHK1.Items.Add('Утомляемость');
  gp_mass[0,16] := True;
  //-----------------------
  CHK1.Items.Add('Нарушение  сна');
  gp_mass[0,17] := True;
  //-----------------------
  CHK1.Items.Add('Диастолическое давление свыше 90 мм рт. ст.');
  gp_mass[0,18] := True;
//=======================================================
  lbl2_3.Caption := 'Общий анализ крови ';
  chk2_3.Caption := 'Гемоглобин <100 г/л';
  gp_mass[1,0] := True;
  //-----------------------
  chk2_4.Caption := 'СОЭ > 15 мм/ч';
  gp_mass[1,1] := True;
  //-----------------------
  chk2_5.Caption := 'Лейкоциты > 9,0* 109 клеток/л';
  gp_mass[1,2] := True;
  //================================
  lbl2_4.Caption := 'Биохимический анализ крови ';
  chk2_7.Caption := 'Холестерин   > 6 ммоль/л';
  gp_mass[1,3] := True;
  //-----------------------
  chk2_8.Caption := 'Триглицириды >3, 7 ммоль/л';
  gp_mass[1,4] := True;
  //-----------------------
  chk2_9.Caption := 'ЛПВП >  1,0 ммоль/л';
  gp_mass[1,5] := True;
  //-----------------------
  chk2_10.Caption := 'ЛПНП > 3 ммоль/л';
  gp_mass[1,6] := True;
  //================================
  lbl2_5.Caption := 'Общий анализ мочи ';
  chk2_11.Caption := 'Присутствие небольших концентраций белка';
  gp_mass[1,7] := True;
  //-----------------------
  chk2_12.Caption := 'Лейкоциты  > 6';
  gp_mass[1,8] := True;
  //-----------------------
  chk2_13.Caption := 'Эритроциты > 3';
  gp_mass[1,9] := True;
  //=================================
  lbl2_6.Caption := 'Коалуграмма крови ';
  chk2_14.Caption := 'МНО ( международное нормализованное отношение) > 2';
  gp_mass[1,10] := True;
  //-----------------------
  chk2_15.Caption := 'АЧТВ (Активированное частичное тромбопластиновое время) > 20 сек';
  gp_mass[1,11] := True;
  //-----------------------
  chk2_16.Caption := 'Д-димеры > 500 нг/мл';
  gp_mass[1,12] := True;
//======================================================================
  lbl3_1.Caption := 'Стандартная ЭКГ в 12 отведениях ';
  chk3_0.Caption := 'Сегмент  ST';
  gp_mass[2,0] := True;
  //------------------------
  chk3_1.Caption := 'Отрицательный зубец  S';
  gp_mass[2,1] := True;
  //------------------------
  chk3_2.Caption := 'Положительный зубец  R';
  gp_mass[2,2] := True;
  //------------------------
  chk3_3.Caption := 'Интервал  PQ';
  gp_mass[2,3] := True;
  //========================
  lbl3_2.Caption := 'Суточное мониторирование ЭКГ (Холтер) ';
  chk3_4.Caption := 'АД выше 140/90 мм рт.ст';
  gp_mass[2,4] := True;
  //------------------------
  chk3_5.Caption := 'Средняяя ЧСС до 90 в минуту';
  gp_mass[2,5] := True;
  //------------------------
  chk3_6.Caption := 'Степень снижения систолического и диастолического  давления нон-диппер';
  gp_mass[2,6] := True;
  //------------------------
  chk3_7.Caption := 'Суточный индекс времени (ИВ) выше 15%';
  gp_mass[2,7] := True;
  //========================
  lbl3_3.Caption := 'Эхокардиография ';
  chk3_8.Caption := 'Нарушение диастолической функции левого желудка';
  gp_mass[2,8] := True;
  //------------------------
  chk3_9.Caption := 'Гипертрофия (утолщение) стенки левого желудочка';
  gp_mass[2,9] := True;
  //------------------------
  chk3_10.Caption := 'Диастолическая дисфункция левого желудочка';
  gp_mass[2,10] := True;
  //------------------------
//****************************************************************
  //=====Стенакордия=========================
  CHK2.Items.Add('Боли за грудиной');
  st_mass[0,0] := True;
  //-----------------------
  CHK2.Items.Add('Жгущие болевые ощущения');
  st_mass[0,1] := True;
  //-----------------------
  CHK2.Items.Add('Весьма выраженная болевая интенсивность');
  st_mass[0,2] := True;
  //-----------------------
  CHK2.Items.Add('Боль иррадиирует в левую руку и плечо');
  st_mass[0,3] := True;
  //-----------------------
  CHK2.Items.Add('Боль возникает в момент ходьбы');
  st_mass[0,4] := True;
  //-----------------------
  CHK2.Items.Add('Приступ боли продолжается до 15 минут');
  st_mass[0,5] := True;
  //-----------------------
  CHK2.Items.Add('Нехватка воздуха во время приступа');
  st_mass[0,6] := True;
  //-----------------------
  CHK2.Items.Add('Удушье');
  st_mass[0,7] := True;
  //-----------------------
  CHK2.Items.Add('Холодеют и немеют верхние конечности');
  st_mass[0,8] := True;
  //-----------------------
  CHK2.Items.Add('Бледность');
  st_mass[0,9] := True;
  //-----------------------
  CHK2.Items.Add('Тошнота');
  st_mass[0,10] := True;
  //-----------------------
  CHK2.Items.Add('Боль проходит после принятия нитроглицерина');
  st_mass[0,11] := True;
  //-----------------------
  CHK2.Items.Add('Избыточная масса тела (ожирение)');
  st_mass[0,12] := True;
  //-----------------------
  CHK2.Items.Add('Пульс учащается, затем урежается');
  st_mass[0,13] := True;
  //-----------------------
  CHK2.Items.Add('Повышение АД');
  st_mass[0,14] := True;
//============================================
  lbl22_0.Caption := 'Общий анализ крови ';
  chk22_0.Caption := 'Гемоглобин <100 г/л';
  st_mass[1,0] := True;
  //-----------------------
  chk22_1.Caption := 'СОЭ > 15 мм/ч';
  st_mass[1,1] := True;
  //-----------------------
  chk22_2.Caption := 'Лейкоциты > 9,0* 109 клеток/л';
  st_mass[1,2] := True;
//============================================
  lbl22_1.Caption := 'Биохимический анализ крови ';
  chk22_3.Caption := 'Холестерин   > 6 ммоль/л';
  st_mass[1,3] := True;
  //-----------------------
  chk22_4.Caption := 'Триглицириды >3, 7 ммоль/л';
  st_mass[1,4] := True;
  //-----------------------
  chk22_5.Caption := 'ЛПВП >  1,0 ммоль/л';
  st_mass[1,5] := True;
  //-----------------------
  chk22_6.Caption := 'ЛПНП > 3 ммоль/л';
  st_mass[1,6] := True;
//============================================
  lbl22_2.Caption := 'Общий анализ мочи ';
  chk22_7.Caption := 'Присутствие небольших концентраций белка';
  st_mass[1,7] := True;
  //-----------------------
  chk22_8.Caption := 'Лейкоциты  > 6';
  st_mass[1,8] := True;
  //-----------------------
  chk22_9.Caption := 'Эритроциты > 3';
  st_mass[1,9] := True;
//============================================
  lbl22_3.Caption := 'Коалуграмма крови ';
  chk22_10.Caption := 'МНО ( международное нормализованное отношение) > 2';
  st_mass[1,10] := True;
  //-----------------------
  chk22_11.Caption := 'АЧТВ (Активированное частичное тромбопластиновое время) > 20 сек';
  st_mass[1,11] := True;
  //-----------------------
  chk22_12.Caption := 'Д-димеры > 500 нг/мл';
  st_mass[1,12] := True;
//============================================
  lbl23_0.Caption := 'Стандартная ЭКГ в 12 отведениях ';
  chk23_0.Caption := 'Депрессия сегмента ST';
  st_mass[2,0] := True;
  //-----------------------
  chk23_1.Caption := 'Отрицательный зубец  Т';
  st_mass[2,1] := True;
  //-----------------------
  chk23_2.Caption := 'Патологический зубец Q';
  st_mass[2,2] := True;
  //=========================================
  //-----------------------
  lbl32_4.Caption := 'Суточное мониторирование ЭКГ (Холтер) ';
  chk23_3.Caption := 'АД выше 140/90 мм рт.ст';
  st_mass[2,3] := True;
  //-----------------------
  chk23_4.Caption := 'Транзиторная депрессия сегмента ST на 0,1 мВ и более, продолжающаяся более 30 с';
  st_mass[2,4] := True;
//===========================================
  lbl23_1.Caption := 'Эхокардиография ';
  chk23_5.Caption := 'Уплотнение стенок аорты';
  st_mass[2,5] := True;
  //-----------------------
  chk23_6.Caption := 'Уплотнение стенок фиброзного кольца';
  st_mass[2,6] := True;
  //-----------------------
  chk23_7.Caption := 'Нарушение диастолической функции левого желудка';
  st_mass[2,7] := True;
  //-----------------------
  chk23_8.Caption := 'Систолическая функция левого желудочка умеренно снижена';
  st_mass[2,8] := True;
//===========================================
end;
//--Процедура вывода информации-------------
procedure Vivod_info(lb : TLabel; perc: Real);
begin
  if perc <= 20 then
  begin
    lb.Caption := FloatToStr(perc) + '%' + ' - Недостаточно данных для постановки диагноза';
    lb.Font.Color := $000000CC;
  end
  else if (perc > 20) and (perc < 65) then
  begin
    lb.Caption := FloatToStr(perc) + '%' + ' - Нужны доп. исследования для опр. точного диагноза';
    lb.Font.Color := $000080FF;
  end
  else begin
    lb.Caption := FloatToStr(perc) + '%' + ' - Диагноз подтвержден';
    lb.Font.Color := $00BF0000;
  end;
end;
//----Процедура формирование результатов для гипертонии----------
procedure Result_gp();
var
  i,sumGP:Integer;
  gpPerc:Real;
  f:TForm1;
  ch_mass : array [0..2,0..19] of Boolean; // массив чекбоксов
begin
  sumGP := 0;
  f := Form1;
  ch_mass[1,0] := f.chk2_3.Checked;
  ch_mass[1,1] := f.chk2_4.Checked;
  ch_mass[1,2] := f.chk2_5.Checked;
  ch_mass[1,3] := f.chk2_7.Checked;
  ch_mass[1,4] := f.chk2_8.Checked;
  ch_mass[1,5] := f.chk2_9.Checked;
  ch_mass[1,6] := f.chk2_10.Checked;
  ch_mass[1,7] := f.chk2_11.Checked;
  ch_mass[1,8] := f.chk2_12.Checked;
  ch_mass[1,9] := f.chk2_13.Checked;
  ch_mass[1,10] := f.chk2_14.Checked;
  ch_mass[1,11] := f.chk2_15.Checked;
  ch_mass[1,12] := f.chk2_16.Checked;
  //===================
  ch_mass[2,0] := f.chk3_0.Checked;
  ch_mass[2,1] := f.chk3_1.Checked;
  ch_mass[2,2] := f.chk3_2.Checked;
  ch_mass[2,3] := f.chk3_3.Checked;
  ch_mass[2,4] := f.chk3_4.Checked;
  ch_mass[2,5] := f.chk3_5.Checked;
  ch_mass[2,6] := f.chk3_6.Checked;
  ch_mass[2,7] := f.chk3_7.Checked;
  ch_mass[2,8] := f.chk3_8.Checked;
  ch_mass[2,9] := f.chk3_9.Checked;
  ch_mass[2,10] := f.chk3_10.Checked;
  //===============================
  sumGP := 0;
  for i := 0 to f.CHK1.Items.Count - 1 do
  begin
    if f.CHK1.Checked[i] = gp_mass[0,i] then Inc(sumGP);
  end;
  //----------------
  for i := 0 to 12 do
  begin
    if ch_mass[1,i] = gp_mass[1,i] then Inc(sumGP);
  end;
  //----------------
    for i := 0 to 10 do
  begin
    if ch_mass[2,i] = gp_mass[2,i] then Inc(sumGP);
  end;
  //=================================================
  gpPerc := Floor((sumGP / (f.CHK1.Items.Count + 13 + 11)) * 100);
  Vivod_info(f.lblGPP, gpPerc);
  //----------------
end;
//----Процедура формирование результатов для стенокардии----------
procedure Result_st();
var
  i,sumST:Integer;
  stPerc:Real;
  f:TForm1;
  ch_mass : array [0..2,0..19] of Boolean; // массив чекбоксов
begin
  sumST := 0;
  f := Form1;
  ch_mass[1,0] := f.chk22_0.Checked;
  ch_mass[1,1] := f.chk22_1.Checked;
  ch_mass[1,2] := f.chk22_2.Checked;
  ch_mass[1,3] := f.chk22_3.Checked;
  ch_mass[1,4] := f.chk22_4.Checked;
  ch_mass[1,5] := f.chk22_5.Checked;
  ch_mass[1,6] := f.chk22_6.Checked;
  ch_mass[1,7] := f.chk22_7.Checked;
  ch_mass[1,8] := f.chk22_8.Checked;
  ch_mass[1,9] := f.chk22_9.Checked;
  ch_mass[1,10] := f.chk22_10.Checked;
  ch_mass[1,11] := f.chk22_11.Checked;
  ch_mass[1,12] := f.chk22_12.Checked;
  //===================
  ch_mass[2,0] := f.chk23_0.Checked;
  ch_mass[2,1] := f.chk23_1.Checked;
  ch_mass[2,2] := f.chk23_2.Checked;
  ch_mass[2,3] := f.chk23_3.Checked;
  ch_mass[2,4] := f.chk23_4.Checked;
  ch_mass[2,5] := f.chk23_5.Checked;
  ch_mass[2,6] := f.chk23_6.Checked;
  ch_mass[2,7] := f.chk23_7.Checked;
  ch_mass[2,8] := f.chk23_8.Checked;
  //===============================
  sumST := 0;
  for i := 0 to f.CHK2.Items.Count - 1 do
  begin
    if f.CHK2.Checked[i] = st_mass[0,i] then Inc(sumST);
  end;
  //----------------
  for i := 0 to 12 do
  begin
    if ch_mass[1,i] = st_mass[1,i] then Inc(sumST);
  end;
  //----------------
    for i := 0 to 8 do
  begin
    if ch_mass[2,i] = st_mass[2,i] then Inc(sumST);
  end;
  //=================================================
  stPerc := Floor((sumST / (f.CHK2.Items.Count + 13 + 9)) * 100);
  Vivod_info(f.lblSTP, stPerc);
  //----------------
end;
//---Событие при срабатывании перехода на вкладку результат---
procedure TForm1.ts4Show(Sender: TObject);
begin
  Result_gp();
end;

procedure TForm1.ts2_4Show(Sender: TObject);
begin
  Result_st();
end;

end.
