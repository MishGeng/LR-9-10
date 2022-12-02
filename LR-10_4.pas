var
  dmas: array [1..8, 1..8] of integer;
  mas: array [1..8] of integer;

begin
  var b: boolean;
  var a: real;
  var min := 100;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      dmas[i, j] := random(0, 100);
      print(dmas[i, j]);
    end;
    println();
  end;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      if dmas[i, j] < min then
        min := dmas[i, j]; 
    end;
    mas[i] := min;
    min := 100;
  end;
  print('min в каждой соответсвующей строке = ', mas);
  println;
  for var i := 1 to 8 do
    a := a + mas[i];
  a := a / 8;
  a := round(a);
  println('Среднее арефметическое = ',a);
  for var i := 1 to 8 do
    if mas[i] = a then
    begin
      b := true;
      break;
    end
    else
      b := false;
  if (b) then
    println('YES')
  else
    println('NO');
end.