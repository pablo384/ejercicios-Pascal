//RP que ingrese 10 notas aprobadas y que muestre
//cual fue la nota mayor
//cual fue la menor
//y el promedio de todas las notas
program arreglo;
uses crt;
type
	calificacion = array[0..9] of Real;
const
	prom = 10;
var
	cal: calificacion;
	i:Integer=0;
	promedio:real=0;
	mayor:Real=0;
	menor:Real=99999999999;
begin
	clrscr;
	writeln('ingrese 10 caificaciones');
	while i < 10 do
	begin
		writeln('ingrse calificacion - ',i);
		readln(cal[i]);
		if (cal[i]>=70) and (cal[i]<=100) then 
		begin
			promedio:= promedio + cal[i];
			if cal[i]>mayor then 
			begin
				mayor:= cal[i];
			end;

			if cal[i]<menor then 
			begin
				menor:=cal[i];
			end;
		end
		else 
		begin
			writeln('Debe ingrsar una nota aprobada >=70 y <=100');
			i:=i-1;
		end;
		i:=i+1;
	end;
	promedio:= promedio/prom;
	writeln('EL promedio es - ', promedio:2:2);
	writeln('La nota mayor es - ', mayor:2:2);
	writeln('La nota menor es - ', menor:2:2);
end.