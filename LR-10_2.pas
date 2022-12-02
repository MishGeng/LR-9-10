var
  dmas: array [1..8, 1..6] of integer;
  mas: array[1..8] of integer;

begin
  for var i := 1 to 8 do
  begin
    for var j := 1 to 6 do
    begin
      dmas[i, j] := random(-25, 100);
      print(dmas[i, j]);
    end;
    println();
  end;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 6 do
    begin
      if dmas[i, j] < 0 then
      begin
        mas[i] := -1;
        break;
      end
      else
        mas[i] := 1;
    end;
  end;
  println(mas);
end.
