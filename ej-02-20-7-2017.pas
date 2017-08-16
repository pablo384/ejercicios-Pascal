//CP QUE PIDA AL USUARIO 5 VALORES NUMERICOS EN UN PRIMER ARREGLO
//EN OTRO ARREGLO QUE ALMACENE LA MISMA CANTIDAD DE NUMEROS
//Y LUEGO IMPRIMA LA MULTIPLICACION DE DICHOS ARREGLOS

program Untitled;
uses crt;
	type
		arr = array[1..5] of Integer;
	var
		num1: arr;
		num2:arr;
		i:Integer;

begin
	clrscr;
	writeln('Ingrese 5 numeros');
	for i := 1 to 5 do
	begin
		readln(num1[i]);
	end;
	writeln('Ingrese 5 numeros de nuevo');
	for i := 1 to 5 do
	begin
		readln(num2[i]);
	end;
	writeln('La multiplicacion de ambos es:');
	for i := 1 to 5 do
	begin
		writeln(num1[i],'x',num2[i],'=',num1[i]*num2[i]);
	end;
end.