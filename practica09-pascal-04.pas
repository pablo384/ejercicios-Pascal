//cxf
program exA;
uses crt;
type
    cadena = array[1..5] of Integer;
var
    arr1, arr2: cadena;
    f,c:Integer;
    cont:Boolean=false;
    cont1:Boolean=false;
begin
	writeln('llenar arreglo 1');
	for f := 1 to 5 do
	begin
		readln(arr1[f]);
	end;
	writeln('llenar arreglo 2');
	for f := 1 to 5 do
	begin
		readln(arr2[f]);
	end;

	for f := 1 to 5 do
	begin
		for c := 1 to 5 do
		begin
			if arr1[f]=arr2[c] then 
			begin
				cont:=true;
			end;
			if arr2[f]=arr1[c] then 
			begin
				cont1:=true;
			end;
		end;
		if cont=false then 
		begin
			writeln('El numero ', arr1[f], ' NO es comun en ambos arreglos');
		end;
		if cont1=false then 
		begin
			writeln('El numero ', arr2[f], ' NO es comun en ambos arreglos');
		end;
		cont:=false;
		cont1:=false;
	end;
	
end.