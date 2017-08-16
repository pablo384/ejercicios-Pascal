//RP que complete en un arreglo el nombre de 5 empleados
//en un 2do el sueldo diario de los epleados
//en un 3ro almacene cuanto se le debe pagar segun la cantidad de dias ingresados por el teclado.
program Untitled;
uses crt;
	type
		arrs = array[1..5] of String;
		arrn = array[1..5] of Real;
	var
		nombres: arrs;
		suelDiario: arrn;
		sueldo:arrn;
		diasTr,i:Integer;
begin
	for i := 1 to 5 do
	begin
	    writeln('Ingrese Nombre de empleado');
		readln(nombres[i]);
		writeln('Ingrese sueldo');
		readln(suelDiario[i]);
	end;
	writeln('Igrese la cantidad de dias trabajados:');
	readln(diasTr);
	clrscr;
	for i := 1 to 5 do
	begin
		sueldo[i]:=suelDiario[i]*diasTr;
		writeln(nombres[i],' tiene un sueldo diario de ', suelDiario[i]:2:2,' por ', diasTr,' gana un total de ', sueldo[i]:2:2);
	end
end.