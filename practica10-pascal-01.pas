//cxf
program exA;
uses crt;
type
    cadena = array[1..3] of Integer;
var
    calificaciones:cadena;
    nombre:String;
    i:Integer;
    suma:Integer=0;

procedure ingresoValores();
	begin
		writeln('Ingrese nombre del estudiante');
		readln(nombre);
		writeln('Ingrese 3 calificaciones del estudiante');
		for i := 1 to 3 do
		begin
			readln(calificaciones[i]);
			suma:=suma+calificaciones[i];
		end;
	end;
procedure mostrarpromedio();
	begin
		writeln('EL promedio de ', nombre,' es ', (suma div 3));
	end;

begin
	ingresoValores;
	mostrarpromedio;
end.