//cxf
program exA;
uses crt;
type
    cadena = array[1..30] of Integer;
var
	opcion,i:Integer;
	cont:Boolean=true;
	arreglo:cadena;
	suma:Integer=0;

procedure displayInput();
	begin
		writeln('-------HOLA USUARIO---------------');
		writeln('Seleccione la operacion preferida');
		writeln('1- ingresar');
		writeln('2- suma total');
		writeln('3- promedio');
		writeln('4- salir');
		readln(opcion);
	end;
procedure ingresar();
	begin
		clrscr;
		writeln('La ingresar es 30 numeros positivos');
		i := 1;
		while (i<=30) do 
		begin
			readln(arreglo[i]);
			if arreglo[i]<1 then 
			begin
				writeln('Deben ser numeros positivos (>.>)');
				i:=i-1;
			end;
			i:=i+1;
		end;
	end;
procedure sumatotal();
	begin
		clrscr;
		suma:=0;
		for i := 1 to 30 do
		begin
			suma:=suma+arreglo[i];
		end;
		writeln('La sumatotal es ',suma);
	end;
procedure promedio();
var
	promedios:Real;
	begin
		clrscr;
		sumatotal;
		promedios:=suma div 30;
		writeln('El promedio es ', promedios:2:2);
	end;

begin	

	while cont do 
	begin
		displayInput;
		suma:=0;
		case opcion of
			1: ingresar;
			2:sumatotal;
			3:promedio;
			4:begin
				clrscr;
				cont:=false
			end
		end
	end;
end.