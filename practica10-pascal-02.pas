//cxf
program exA;
uses crt;
var
	numero,i:Integer;

procedure ingresoDato();
	begin
		readln(numero);
	end;
procedure mostrandoTabla();
	begin
		for i := 1 to 12 do
		begin
			writeln(numero,'x',i,'=',i*numero);
		end;
	end;
begin
	ingresoDato;
	mostrandoTabla;
end.