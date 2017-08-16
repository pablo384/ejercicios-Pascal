uses
   crt; 
var
   palabra     : string;
   conta     : integer;
   palindro  : boolean;  
begin
   clrscr; 
   readln(palabra); 
   conta:=1; 
   while conta<=length(palabra) div 2 do  
      begin
         if palabra[conta]=palabra[length(palabra)-(conta-1)] then
               begin
                  palindro:=true;
               end
            else
               begin
                  palindro:=false;
                  conta:=length(palabra) div 2;
               end;
         conta:=conta+1;
      end;
   if palindro=true then
            writeln('Si es Palindromo')
         else
         writeln('No es palindromo');
   readkey;
end.