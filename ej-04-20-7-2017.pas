//RP que te permita buscar un valor dentro de una matriz
//e imprima en que posicion se encuantra dicho valor
//el orden debe de ser 2x4.
//c,f
//imprimir en que posicion se encuantra el valor mas alto
program Untitled;
uses crt;

type
	bidimensional = array[1..2, 1..4] of Integer;
var
	n: bidimensional;
	m:array[1..2, 1..4] of  Integer;
	c,f,valor:Integer;
	mayor:Integer=0;
	fila, columna:Integer;

begin
	randomize;
	clrscr;
	{Rellenar a matriz con numeros a azar}
	for f := 1 to 4 do //filas
	begin		
		for c := 1 to 2 do //columnas
		begin
			m[c,f]:= random(50);
			// writeln('INgresa valor posicion (f,c)', f,'<->',c);
			// readln(m[c,f]);
		end;
	end;
	clrscr;
	{IMprimiendo matriz}
	for f := 1 to 4 do //filas
	begin		
		for c := 1 to 2 do //columnas
		begin
			write('[',m[c,f],']');
			if m[c,f]>mayor then 
			begin
				mayor:=m[c,f];
				fila:=f;
				columna:=c;
			end;
		end;
		writeln;
	end;

	writeln('Escriba el valor que quiere buscar:');
	readln(valor);
	for f := 1 to 4 do //filas
	begin		
		for c := 1 to 2 do //columnas
		begin
			if m[c,f]=valor then
			begin
				writeln(valor,' se encuantra en ',c,'x',f);
			end;
		end;
	end;

	writeln(mayor,' es el numero mayor en ', columna,'x', fila);
end.