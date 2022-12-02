var
  a, b: integer;
  mas: array of integer;

function f(n: integer): integer;
begin
  for var i := 1 to n do
  begin
    if mas[i] > 0 then
    begin
      a := i;
      break;
    end
    else
      a := 0;
  end;
  for var i := 1 to n do
    if (mas[i] < 0) then
      b := i;
  println('Первый положительный элемент = ', a);
  println('Последний отрицательный элемент = ',b);
end;

begin
  var n := readinteger;
  setlength(mas, n + 1);
  for var i := 1 to n do
    mas[i] := readinteger();
  f(n)
end.