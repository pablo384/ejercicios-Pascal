program alg2;
uses crt;

var
	x,x1,x2,n1,n2: Integer;
	cantidad: Integer=0;
	cantpar: Integer=0;
	cantimpar: Integer=0;
	almacen: Integer=0;

begin
	clrscr;
	writeln('ingresar dos valores');
	readln(x1,x2);

	if x1<x2 then 
	begin
	n1:=x1;
	n2:=x2;		
	end
	else
	begin
	n1:=x2;
	n2:=x1;		
	end;

	for x := n1 to n2 do
	begin

	writeln(x);
	cantidad:=cantidad+1;
	almacen:=almacen+x;

	if x mod 2=0 then
	begin		
	// writeln('el numero es par');
	cantpar:=cantpar+1;
	end
	else
	begin
		cantimpar:=cantimpar+x;
	end;

	writeln('Cantidad de numeros impresos:', cantidad);
	writeln('cantidad de numeros pares:', cantpar);
	writeln('suma d eimpares:',cantimpar);
	writeln('promedio de rango de numeros:', (almacen/cantidad):2:2);
end.