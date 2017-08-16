//RP que permita ingresar en un arreglo 10
// valores numericos y por medio de un menu le permita al usuario
//imprimir las posiciones pares, impares, o todas.

program Untitled;
uses crt;
	type
		arr = array[1..10] of Integer;
	var
		numeros: arr;
		opcion:Integer;
		continuidad:Integer=1;
		i:Integer;
begin
	clrscr;
	while continuidad=1 do 
	begin
		writeln('1-Ingresar 10 valores');
		writeln('2-imprimir posiciones pares');
		writeln('3-imprimir posiciones impares');
		writeln('4-imprimir todas las posiciones');
		writeln('5-Salir');
		readln(opcion);
		case opcion of
			1: begin
				clrscr;
				writeln('Selecciono opcion - ', opcion);
				for i := 1 to 10 do
				begin
					writeln('Escribir posicon - ', i);
					readln(numeros[i]);
				end;
			end;
			2:begin
				clrscr;
				writeln('Selecciono opcion - ', opcion);
				for i := 1 to 10 do
				begin
					if (i mod 2 = 0) then 
					begin
						writeln('posicon - ', i);
						writeln(numeros[i]);
					end;
				end;
			end;
			3:begin
				clrscr;
				writeln('Selecciono opcion - ', opcion);
				for i := 1 to 10 do
				begin
					if (not i mod 2 = 0) then 
					begin
						writeln('posicon - ', i);
						writeln(numeros[i]);
					end;
				end;
			end;
			4:begin
				clrscr;
				writeln('Selecciono opcion - ', opcion);
				for i := 1 to 10 do
				begin
					writeln('posicon - ', i);
					writeln(numeros[i]);
				end;
			end;
			5:begin
				continuidad:=0;
				clrscr;
			end;
		end;
	end;
end.