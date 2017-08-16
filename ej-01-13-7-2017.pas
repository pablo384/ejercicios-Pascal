//RP que permita inssertar en un arreglo 10 numeros enteros
// e imprimir en pantalla en que posicion se encuentra el numeros mas alto

program masAlto;
uses crt;

var
	numeros: array[1..10] of Integer;
	i:Integer;
	mayor:Integer;
	posicion:Integer;

begin
	clrscr;
	for i := 1 to 10 do
	begin
		writeln('Introduzca el numero en la posicion ', i);
		readln(numeros[i]);
	end;

	for i := 1 to 10 do
	begin
		if numeros[i]>mayor then 
		begin
			mayor:= numeros[i];
			posicion:=i;
		end;
	end;

	writeln('EL mayor numero es -',mayor, ' EN posicion - ', posicion);
end.