//cxf
program exA;
uses crt;
type
    cadena = array[1..3, 1..5] of Integer;
var
    arr1, arr2: cadena;
    f,c,opcion:Integer;
    cont:Boolean=true;
begin
    randomize;
    clrscr;

    for f := 1 to 5 do
    begin
        for c := 1 to 3 do
        begin
            arr1[c,f]:=random(50);
            arr2[c,f]:=random(50);
        end;        
    end;

    while cont do 
    begin
        writeln('1- mostrar la suma de ambos arreglos');
        writeln('2- mostrar la resta de ambos arreglos');
        writeln('3- mostrar la multiplicacion de ambos arreglos');
        writeln('4- mostrar la division de ambos arreglos');
        writeln('5- salir');
        readln(opcion);
        clrscr;
        writeln('Arreglo ORIGINAL 1');
        for f := 1 to 5 do
        begin
            for c := 1 to 3 do
            begin
            write('[',arr1[c,f],']');
            end;
            writeln('');
        end;
        writeln('Arreglo ORIGINAL 2');
        for f := 1 to 5 do
        begin
            for c := 1 to 3 do
            begin
            write('[',arr2[c,f],']');
            end;
            writeln('');
        end;

        case opcion of
            1:begin
                writeln('Suma Arreglos');
                for f := 1 to 5 do
                begin
                    for c := 1 to 3 do
                    begin
                    write('[',arr1[c,f]+arr2[c,f],']');
                    end;
                    writeln('');
                end;
            end;
            2:begin
                writeln('Resta Arreglos');
                for f := 1 to 5 do
                    begin
                        for c := 1 to 3 do
                        begin
                        write('[',arr1[c,f]-arr2[c,f],']');
                        end;
                        writeln('');
                    end;                
            end;
            3:begin
                writeln('Multiplicacion Arreglos');
                for f := 1 to 5 do
                begin
                    for c := 1 to 3 do
                    begin
                    write('[',arr1[c,f]*arr2[c,f],']');
                    end;
                    writeln('');
                end;
            end;
            4:begin
                writeln('Division Arreglos');
                for f := 1 to 5 do
                begin
                    for c := 1 to 3 do
                    begin
                    write('[',arr1[c,f] div arr2[c,f],']');
                    end;
                    writeln('');
                end;
            end;
            5:begin
                cont:=false; 
                clrscr;
                writeln('Gracias por participar...');
            end;
        end
    end;
    
end.