{RP 
-que complete un arreglo bidimensional que sea 2x4
- muestre en un arreglou unidimensional de 4 posiciones la suma de los valores ingresados
c,f
}

program anaja;
type
	cadena = array[1..2, 1..4] of Integer;
	cadenasimple = array[1..4] of Integer;
var
	bidi : cadena;
	uni: cadenasimple;
	c,f,uno: Integer;
	suma:Integer=0;
procedure llenar(a:Integer;posA:Integer; posB: Integer);
	begin;
		bidi[posA, posB]:=a;
	end;
procedure imprimirSuma();
	begin
		for c := 1 to 4 do
		begin
			writeln('[', uni[c],']');
		end;
	end;
procedure sumaaa();
	begin
		uni[f]:=suma;
		suma:=0;
	end;

begin
	for f := 1 to 4 do 
	begin
		for c := 1 to 2 do
		begin
			readln(uno);
			llenar(uno, c,f);
			suma:=suma+uno;				
		end;
		sumaaa;
	end;
	imprimirSuma;
end.