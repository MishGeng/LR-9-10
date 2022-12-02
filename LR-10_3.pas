var
  dmas: array [1..8, 1..8] of integer;
  mas: array [1..8] of integer;

begin
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      dmas[i, j] := random(-10, 10);
      print(dmas[i, j]);
    end;
    println();
  end;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 7 do
    begin
      if dmas[i, j] + dmas[i, j + 1] = 7 then
      begin
        mas[i] := 1;
        break;
      end
      else
          mas[i] := -1;
    end;
  end;
  println(mas);
end.