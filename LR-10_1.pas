var 
  dmas:array [1..6,1..8] of integer;
  mas:array [1..6] of integer;
begin
  for var i:=1 to 6 do
  begin
    for var j:=1 to 8 do
    begin
      dmas[i,j]:=random(10,99);
      print(dmas[i,j]);
    end;
    println();
  end;
  for var i:=1 to 6 do
  begin
    for var j:=1 to 8 do
    begin
      if dmas[i,j] mod 4 = 0 then
        begin
        mas[i]:=dmas[i,j];
        break;
        end
      else
        mas[i]:=0;
    end;
  end;
  println(mas);
end.