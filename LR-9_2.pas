var
  max, min, max2, i, a, b, v: integer;
  mas: array of integer;

procedure pr1(len: integer);
begin
  var i: integer;
  for i := 1 to len do
    if mas[i] < min then
    begin
      min := mas[i];
      b := i;
    end;
  max := min;
  max2 := min;
  for i := 1 to len do
  begin
    if mas[i] > max then
    begin
      max := mas[i];
      a := i;
    end;
    if mas[i] < 0 then
      if (mas[i] > max2) and (mas[i] < 0) then
      begin
        max2 := mas[i];
        v := i;
      end;
  end;
    
  println(max, a);
  println(abs(min), b);
  println(max2, v);
end;

begin
  var n := readinteger;
  setlength(mas, n + 1);
  for i := 1 to n do
    mas[i] := readinteger();
  pr1(n);
end.