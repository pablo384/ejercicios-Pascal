PROGRAM Suma (INPUT, OUTPUT);

VAR
  Sumando1, Sumando2,Suma:INTEGER;                                                              

BEGIN
  Write('ingrese un numero: ');
  ReadLn(Sumando1);
  Write('ingrese otro numero: ');
  ReadLn(Sumando2);
  Suma:=Sumando1 + Sumando2;
  WriteLn ('La suma es: ',Suma);
  WriteLn ('Pulse [Intro] para finalizar...');
  readln
END.