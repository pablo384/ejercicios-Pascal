program arreglo2;
uses crt;
type
	calificacion = array[0..3] of Real;
const
	prom = 4;
var
	cal: calificacion;
	i:Integer;
	promedio:real=0;	
begin
	clrscr;
	writeln('ingrese 4 caificaciones');
	for i := 0 to 3 do
	begin
		writeln('ingrse calificacion - ',i);
		readln(cal[i]);
		promedio:= promedio + cal[i];
	end;
	promedio:= promedio/prom;
	writeln('EL promedio es - ', promedio:2:2);	
end.