//c,f
program Untitled;
uses crt;

type
	bidimensional = array[1..3, 1..4] of Integer;
var
	n: bidimensional;
	m:array[1..3, 1..4] of  Integer;
	c,f:Integer;

begin
	randomize;
	clrscr;
	{Rellenar a matriz con numeros a azar}
	for f := 1 to 4 do //filas
	begin		
		for c := 1 to 3 do //columnas
		begin
			// m[c,f]:= random(10);
			writeln('INgresa valor posicion (f,c)', f,'<->',c);
			readln(m[c,f]);
		end;
	end;
	clrscr;
	{IMprimiendo matriz}
	for f := 1 to 4 do //filas
	begin		
		for c := 1 to 3 do //columnas
		begin
			write('[',m[c,f],']');
		end;
		writeln;
	end;
end.