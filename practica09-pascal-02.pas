//cxf
program exA;
uses crt;
type
    cadena = array[1..2, 1..5] of Integer;
var
    arr1: cadena;
    f,c,opcion:Integer;
    cont:Boolean=false;
begin
	writeln('Introduzca 10 numeros enteros');
	for f := 1 to 5 do
	begin
		for c := 1 to 2 do
		begin
			readln(arr1[c,f]);
		end;
	end;
	writeln('Introduzca 1 numero a buscar');
	readln(opcion);
	for f := 1 to 5 do
	begin
		for c := 1 to 2 do
		begin
			if opcion=arr1[c,f] then
			begin
				cont:=true;
			end;
		end;
	end;

	if cont=true then
	begin
		writeln('El numero ingresado formaba parte del array introducido');
	end
	else
	begin
		writeln('El numero ingresado NO formaba parte del array introducido');
	end;
end.