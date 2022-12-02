var
  mas: array of integer;
  mas2: array of integer;

function f(n: integer): integer;
var
  si, sj: integer;
begin
  for var i := 0  to n-1 do
    if mas[i] > 0 then
      si := si + mas[i];
  for var j := 0 to n-1 do
    if mas2[j] > 0 then
      sj := sj + mas2[j];
  if si > sj then
  begin
    for var j := 0 to n-1 do
      mas2[j] := mas2[j] * 10;
    println(mas2);
  end
  else
    begin
    for var i := 0 to n-1 do
      mas[i] := mas[i] * 10;
    println(mas);
  end
end;

begin
  var n := readinteger;
  mas := new integer[n];
  mas2 := new integer[n];
  print('Введите первый массив');
  for var i := 0 to n-1 do
    mas[i] := readinteger();
  print('Введите второй массив');
  for var j := 0 to n-1 do
    mas2[j] := readinteger();
  f(n)
end.