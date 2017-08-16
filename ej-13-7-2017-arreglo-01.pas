{//RP que contenga un menu:
1- insertar (llenar arreglo de 10 posiciones)
2- imprimir
3- buscar
0-salir
}

program ejercicio;
uses crt;

type
	cadena = array[1..10] of Integer;

var
	opcion, buscar: Integer;
	arreglo: cadena;
	i: Integer;
	ok:Integer=0;


procedure menu();
	begin
		writeln('1- insertar');
		writeln('2- imprimir');
		writeln('3- buscar');
		writeln('0- salir');
	end;

procedure llenararreglo();
	
	begin
		for i := 1 to 10 do 
		begin
			readln(arreglo[i]);
		end;
		ok:=1;
	end;
procedure imprimirarreglo();
	begin
	if ok=1 then 
	begin
		for i := 1 to 10 do 
		begin
			writeln(arreglo[i]);
		end;
	end;
				
	end;
procedure buscarEnarreglo(b:Integer);
	begin
	for i := 1 to 10 do 
	begin
		if b=arreglo[i] then
		begin
			writeln('Se encontro en la posicion - ', i);
		end;
	end;				
	end;

begin
	clrscr;
	repeat		
		menu;
		readln(opcion);

		if opcion=1 then 
		begin
			clrscr;
			llenararreglo;
		end;
		if opcion=2 then 
		begin
			clrscr;
			imprimirarreglo;
		end;
		if opcion=3 then 
		begin
		clrscr;
		if ok=1 then
		begin

			readln(buscar);
			buscarEnarreglo(buscar);
		end;			
		end;
	until opcion=0;
	clrscr;	
end.