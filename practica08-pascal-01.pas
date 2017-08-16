{tarea:
-rp que complete de manera aleatoria un arreglo bidimiensional de 5x10
tomando como limite el numero 100, mediante un menu debes permitirle
al usuario mostrar en pantalla el arreglo ordenado de menor a mayor 
o de mayor a menor}

program Untitled;
uses crt;
	type
		arr = array[1..5, 1..10] of Integer;
	var
		numeros: arr;
		numerosviejos: arr;
		mayorMenor: array[1..50] of Integer;
		opcion,grande,pequeno,gc,gf,pc,pf:Integer;
		continuidad:Integer=1;
		f,c,t,cuenta, i:Integer;
		ordenado:Boolean;
begin
	grande:=0;
	pequeno:=1000;
	gc:=999;
	gf:=999;
	pc:=999;
	pf:=999;
	clrscr;
	//llenando arreglo
	for f := 1 to 10 do //filas
	begin		
		for c := 1 to 5 do //columnas
		begin
			numeros[c,f]:= random(100);
			if numeros[c,f]>grande then
			begin
				grande:=numeros[c,f];
				gc:=c;
				gf:=f;
			end;
			if numeros[c,f]<pequeno then 
			begin
				pequeno:=numeros[c,f];
				pc:=c;
				pf:=f;
			end;
		end;
	end;
	numerosviejos:=numeros;

	//Ordenando------------------------------------------------------
	t:=1;
	for f := 1 to 10 do //filas
	begin		
		for c := 1 to 5 do //columnas
		begin
		mayorMenor[t]:=numeros[c,f];
		t:=t+1;
			
		end;
	end;
	ordenado:=false;
	cuenta:=0;

	while ordenado=false do 
	begin
		for i := 1 to 50 do
		begin
			if mayorMenor[i]<mayorMenor[i-1] then 
			begin
				t:=mayorMenor[i];
				mayorMenor[i]:=mayorMenor[i-1];
				mayorMenor[i-1]:=t;
				cuenta:=cuenta-1;
			end;
			
		end;
		if cuenta=0 then
		begin
			ordenado:=true;
		end;
		cuenta:=0;
	end;

	t:=1;
	for f := 1 to 10 do //filas
	begin		
		for c := 1 to 5 do //columnas
		begin
		numeros[c,f]:=mayorMenor[t];
		t:=t+1;
		end;
	end;

	//Ordenando------------------------------------------------------


	while continuidad=1 do 
	begin
		writeln('-------------------ARREGLO-ORIGINAL------------');
		//imprimiendo arreglo sin ordenar
		for f := 1 to 10 do //filas
		begin		
			for c := 1 to 5 do //columnas
			begin
				write('[',numerosviejos[c,f],']');
			end;
			writeln;
		end;
		writeln('----------------------------------------------');
		writeln('1- Imprimir Arreglo ordenado de menor a mayor');
		writeln('2- Imprimir Arreglo ordenado de mayor a menor');
		writeln('3- Imprimir posicion del valor mas alto');
		writeln('4- Imprimir posicion del valor mas bajo');
		// writeln('5- volver a llenar el arreglo');
		writeln('5- Salir');
		readln(opcion);
		
		
		case opcion of
			1:begin
				writeln('--Menor a mayor--');
				for f := 1 to 10 do //filas
				begin		
					for c := 1 to 5 do //columnas
					begin
						write('[',numeros[c,f],']');
					end;
					writeln;
				end;				
			end;
			2:begin
				writeln('---Mayor a menor---');
				for f := 10 downto 1 do //filas
				begin		
					for c := 5 downto 1 do //columnas
					begin
						write('[',numeros[c,f],']');
						
					end;
					writeln;	
				end;
			end;
			3:begin
			clrscr;
			//llenando arreglo
			for f := 1 to 10 do //filas
			begin		
				for c := 1 to 5 do //columnas
				begin
					if numerosviejos[c,f]>grande then
					begin
						grande:=numerosviejos[c,f];
						gc:=c;
						gf:=f;
					end;
					if numerosviejos[c,f]<pequeno then 
					begin
						pequeno:=numerosviejos[c,f];
						pc:=c;
						pf:=f;
					end;
				end;
			end;
			writeln('EL valor mas alto es - ', grande,' en posicion- ',gc,'x',gf);
				
			end;
			4:begin
			clrscr;
			writeln('EL valor mas bajo es - ', pequeno,' en posicion- ',pc,'x',pf);
			end;
			// 5:begin
			// 	clrscr;
			// 	//llenando arreglo
			// 	for f := 1 to 10 do //filas
			// 	begin		
			// 		for c := 1 to 5 do //columnas
			// 		begin
			// 			numeros[c,f]:= random(100);
			// 			if numeros[c,f]>grande then
			// 			begin
			// 				grande:=numeros[c,f];
			// 				gc:=c;
			// 				gf:=f;
			// 			end;
			// 			if numeros[c,f]<pequeno then 
			// 			begin
			// 				pequeno:=numeros[c,f];
			// 				pc:=c;
			// 				pf:=f;
			// 			end;
			// 		end;
			// 	end;
			// 	numerosviejos:=numeros;
			// end;
			5:begin
				clrscr;
				continuidad:=0;				
			end;
		end;

		

		
	end;
	




	

	



	// while continuidad=1 do 
	// begin
	// 	writeln('1-imprimir de mayor a menor');
	// 	writeln('2-imprimir de menor a mayor');
	// 	writeln('3-salir');
	// 	readln(opcion);
	// 	case opcion of
	// 		3:continuidad:=0;
	// 	end
	// end;
end.