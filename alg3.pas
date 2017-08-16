program alg3;
	uses crt;

	type
		numero = Integer;

		var
			letra: String[2];
			palabra:String[100];
			cont:numero=0;
			x:numero;
begin
	clrscr;
//------------------PALABRA--------------------------------------------
	repeat
	begin
		writeln('ingresa una palabra con 4 letras o mas');
		readln(palabra);
	end
		
	until ((length(palabra))>=4) and (length(palabra)<=100);
//------------------LETRA--------------------------------------------
	repeat
	begin
		writeln('ingresa una letra');
		readln(letra);
	end
		
	until (length(letra)=1);

	palabra:= upcase(palabra);
	letra:=upcase(letra);

	for x:= 0 to length(palabra) do 
	begin

		if (letra=palabra[x]) then 
		cont:=cont+1;
		// writeln('su letra fue encontrada:', letra);
	end;

	if (cont>0) then
	begin
		writeln('la letra ', letra,' se repite ',cont,' en la palabra: ', palabra);
	end

end.