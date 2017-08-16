program arreglo;
uses crt;

type
	cadena = array[0..5] of Char;
var
	datos: cadena;
	x:Integer;
	letra:Char;
	encontrada:Integer=0;

begin
	clrscr;
	writeln('Trabajando con Arreglos');
	//insertar datos
	writeln('insertando datos');
	for x:= 0 to 5 do 
	begin
		writeln('ingrese valor - ', x);
		readln(datos[x]);
	end;

	//imprimiendo datos
	for x:= 0 to 5 do
	begin
		writeln('imprimiendo datos posicion - ', x);
		writeln(datos[x]);
	end;

	//BUscar datos
	writeln('Buscar datos, ingresa la letra');
	readln(letra);

	for x := 0 to 5 do
	begin
		if letra=datos[x] then 
		begin
			writeln('Letra encontrada en posicion - ', x);
			encontrada:= encontrada+1;
		end;
	end;

	if encontrada=0 then 
	begin
		writeln('NO encontramos nada');
	end;
	
end.