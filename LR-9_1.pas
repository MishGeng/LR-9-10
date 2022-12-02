var
  mas: array of integer;

function pr(n: integer): integer;
var
  sr := 1;
begin
  for var i := 1 to n do
    if mas[i] mod 2 = 0 then
      sr := sr * mas[i];
  println(sr);
end;

begin
  var a := readinteger;
  setlength(mas, a + 1);
  for var i := 1 to a do
    mas[i] := readinteger();
  pr(a);
end.