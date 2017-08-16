program alg1;
uses crt;

const
	num = 4;
var
	num1, num2, num3, num4, intpromed: Integer;
	promedio:Real;

procedure Main();
begin
	clrscr;
	writeln('Evaluacion de notas');
	readln(num1);
	readln(num2);
	readln(num3);
	readln(num4);

	promedio:=(num1+num2+num3+num4)/num;
	intpromed:= trunc(promedio);


	writeln('EL promedio es:',promedio :2:2);
	writeln('EL promedio es:',intpromed);

	if (promedio>=90) and (promedio<=100) then
	begin
	writeln('La letra final es A');		
	end;

	if (promedio>=80) and (promedio<=89) then
	begin
	writeln('La letra final es B');		
	end;
	if (promedio>=70) and (promedio<=79) then
	begin
	writeln('La letra final es C');		
	end;
	if (promedio>=65) and (promedio<=69) then
	begin
	writeln('La letra final es D');		
	end;
	if (promedio<65) then
	begin
	writeln('La letra final es F');		
	end;

	case intpromed of
		90..100: writeln('CASE: su letra es A');
		80..89: writeln('CASE: su letra es B');
		70..79: writeln('CASE: su letra es C');
		65..69: writeln('CASE: su letra es D');
		0..64: writeln('CASE: su letra es F');
		else 
			writeln('CASE: no comple con el case');
	end;

end;

begin
	Main();
end.
