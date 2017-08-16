program arreglo;
uses crt;
type
	calificacion = array[0..4] of Real;
	estudiante = array[0..4] of String[50];
	promedios = array[0..4] of Real;
const
	prom = 4;

var
	cal: calificacion;
	estu:estudiante;
	x:Integer=0;
	y:Integer=0;
	promedio:promedios;
	promedioTemp:Real=0;
	
begin
	x:=0;
	y:=0;
	clrscr;
	writeln('INgresa 4 calificaciones de 4 estudiantes');
	
	for y:=0 to 1 do
	begin
		writeln('Ingresa el Nombre del estudiante - ',y);
		readln(estu[y]);
		for x := 0 to 3 do
		begin
			writeln('Ingrese calificacion de estudiante - ',y,' calificacion - ',x);
			readln(cal[x]);
			promedioTemp:=cal[x]+promedioTemp;
		end;
		promedio[y]:=promedioTemp/prom;
		promedioTemp:=0;
	end;

	for y := 0 to 1 do
	begin
		writeln('Estudiante: ', estu[y],' tiene un promedio de: ',promedio[y]);
	end;
end.