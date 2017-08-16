//cxf
program exA;
uses crt;
var
	opcion, item1,item2:Integer;
	cont:Boolean=true;

procedure displayInput();
	begin
		writeln('-------HOLA USUARIO---------------');
		writeln('Seleccione la operacion preferida');
		writeln('1- Suma');
		writeln('2- Resta');
		writeln('3- Multiplicar');
		writeln('4- Dividir');
		writeln('5- salir');
		readln(opcion);
	end;
procedure inputItem();
	begin
		writeln('Ingrese primer numero');
		readln(item1);
		writeln('Ingrese segundo numero');
		readln(item2);
	end;
procedure suma();
	begin
		clrscr;
		inputItem;
		writeln('La suma es ', item1+item2);
	end;
procedure resta();
	begin
		clrscr;
		inputItem;
		writeln('La resta es ', item1-item2);
	end;
procedure multiplicar();
	begin
		clrscr;
		inputItem;
		writeln('La multiplicacion es ', item1*item2);
	end;
procedure dividir();
	begin
		clrscr;
		inputItem;
		writeln('La division es ', item1 div item2);
	end;
begin	

	while cont do 
	begin
		displayInput;
		case opcion of
			1: suma;
			2:resta;
			3:multiplicar;
			4:dividir;
			5:begin
				clrscr;
				cont:=false
			end
		end
	end;
end.