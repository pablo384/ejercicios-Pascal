program exA;
uses crt;
type
    cadena = array[1..5] of Integer;
var
    numeros: cadena;
    valor,x:Integer;
    mayor:Integer=0;
procedure llenarArreglo();
    begin
        for x := 1 to 5 do
        begin
            readln(numeros[x]);
        end;
    end;
procedure buscarMayor();
    begin
        for x := 1 to 5 do
        begin
            if (mayor<= numeros[x]) then 
            begin
                mayor:=numeros[x];
            end;
        end;
    end;
procedure impresionValores();
    begin
        if (mayor mod 2 = 0) then 
        begin
            writeln('Mayor es par, ',mayor);
        end;
    end;
function FPar(m : Integer): Integer;
begin
    FPar:= m mod 2;
end;
begin
    clrscr;
    repeat
    begin
        mayor:=0;
        writeln('INgresa valores');
        //llenar arreglo
        llenarArreglo;
        //buscar el mayor de los numeros ingresados
        buscarMayor;
        //impresion de valores par
        impresionValores;
    end;
    until (FPar(mayor) = 0);
    writeln('Gracias por participar...');
end.