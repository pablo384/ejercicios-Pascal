{RP que 
-pida al usuario 10 letras, 
-las almacene en un arreglo
-muestre en pantalla las que se encuentren en posiciones pares
(procedimientos o funciones)
}
program anja;
uses crt;
type
	cadena = array[1..10] of Char;
var
	arreglo: cadena;
	i:Integer;
procedure almacene();
	begin
		for i := 1 to 10 do
		begin
			readln(arreglo[i]);
		end;
	end;
procedure mostrarPar();
	begin
		for i := 1 to 10 do
		begin
			if (i mod 2 = 0) then 
			begin
				writeln('[',arreglo[i],']', ' posicion ', i);
			end			
		end;
	end;
begin
	clrscr;
	almacene;
	mostrarPar;
end.