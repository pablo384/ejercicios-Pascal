program practica;
uses crt;
type
	arregloReal= array[0..14] of Real;
var
	numeros:arregloReal;
	mayores, i: Integer;
	promedio: Real;

begin
	clrscr;
	writeln('Ingrese 15 valores de tipo real');

	for i := 0 to 14 do
	begin
		writeln('numero de posicion - ', i);
		readln(numeros[i]);
		promedio:= promedio +numeros[i];
	end;
	promedio:= promedio/15;
	for i := 0 to 14 do
	begin
		if numeros[i]>promedio then 
		begin
			mayores:= mayores+1;
		end;
	end;

	writeln('El promedio es ', promedio:2:2);
	writeln('Hay ', mayores, ' numeros mayores que el promedio');
	
end.