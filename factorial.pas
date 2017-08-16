PROGRAM CalcularFactorial (INPUT, OUTPUT);

(* Función que calcula el factorial de n (n!) de forma recursiva. *)
  FUNCTION Factorial (CONST N: INTEGER): INTEGER;
  BEGIN
    IF N > 1 THEN
      Factorial := N * (Factorial (N - 1))
    ELSE
      Factorial := N
  END;

VAR
  Base: INTEGER;
BEGIN
  Write ('Valor de N: '); ReadLn (Base);
  WriteLn ('N! = ', Factorial (Base));
  Write ('Pulse [Intro] para finalizar...')
END.