program practica;
uses crt;
type
	arreglos = array[0..9] of String;
	posicionamientos= array[0..9] of Integer;
var
	nombres: arreglos;
	opcion:Integer;
	continuidad:Integer=1;
	p:String;
	i:Integer;
	contador:Integer=0;
	posicion:posicionamientos;

begin
	clrscr;
	while continuidad=1 do 
	begin
		writeln('1- INgresar en un arreglo el nombre de 10 personas');
		writeln('2- Imprimirel listado completo de los nombres');
		writeln('3- BUscar un nombre en especifico');
		writeln('4- Salir del programa');
		readln(opcion);
		writeln('selecciono opcion - ',opcion);
		case opcion of
					1: begin
							for i := 0 to 9 do 
							begin
								writeln('Escribir nombre persona - ', i);
								readln(nombres[i]);
							end;
						end;
					2: begin
							for i:= 0 to 9 do
							begin
								writeln('persona - ', i);
								writeln(nombres[i]);
							end;
						end;
					3:begin
						writeln('Ingrese el nombre a buscar');
						readln(p);
						for i:= 0 to 9 do
							begin
								if p=nombres[i] then
								begin
									contador:= contador+1;
									posicion[i]:=i;
								end;
							end;
							writeln('Se encontro ', contador, ' veces');
							contador:=0;
						end;


					4: continuidad:=0;
				end;
	end;
end.
