var
  dmas: array [1..8, 1..8] of integer;
  mas: array [1..8] of integer;

begin
  var max,a:integer;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      dmas[i, j] := random(0, 10);
      print(dmas[i, j]);
    end;
    println();
  end;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      if dmas[i, j] > max then
        max := dmas[i, j]; 
    end;
    mas[i] := max;
    max := 0;
  end;
  for var i:=1 to 8 do
  begin
    for var j :=1 to 8 do
    begin
      if dmas[i,j] = mas[i] then
        a:=a+1;
    end;
    if a = 1 then
      mas[i]:=1
    else
      mas[i]:=-1;
    a:=0
  end;
  println(mas);
end.