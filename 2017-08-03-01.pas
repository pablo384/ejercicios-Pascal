program a;

uses
crt;

var
	n: String;
	e:Integer;

procedure saludo(nombre:String; edad:Integer);
	var
		mayor: Integer;
	begin
	mayor:=edad;
	if mayor>=18 then 
	begin
		writeln('HOlaaaaa ', nombre,
			' con edad de ', edad);
	end
	else 
	begin
		writeln('Hola menor de edad');
	end;
		
	end;

begin
	clrscr;
	writeln('Ingresa nombre');
	readln(n);
	writeln('INgrese la edad');
	readln(e);
	saludo(n,e);
end.
