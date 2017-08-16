program final;
uses crt;
type
	cadena = array[1..10] of String;
	cadenaEnteros = array[1..10] of Integer;
var
	arCodF, arMontoF: cadenaEnteros;
	arFecha, arDescriF:cadena;
	opcion, i:Integer;
	cont:Boolean=true;

procedure menu();
begin
    writeln('-------------------pablo384---------------------------');
    writeln('----------------------CXC-----------------------------');
	writeln('1- Registro de facturas realizadas');
	writeln('2- Abonar facturas');
	writeln('3- Buscar Factura y mostrar valor pendiente de cobrar');
	writeln('4- Mostrar monto total de las facturas pendientes');
	writeln('5- Salir');
end;
procedure ingresoFecha(posicion:Integer);
var
	tem, aux: String;
begin
	writeln('Dia:');
	readln(tem);
	aux:=tem + '-';
	writeln('Mes:');
	readln(tem);
	aux:=aux + tem + '-';
	writeln('Ano:');
	readln(tem);
	aux:=aux + tem;
	arFecha[posicion]:= aux;
end;

procedure registroFacturas();
begin
	for i := 1 to 10 do
	begin
		writeln('Factura ', i);
		writeln('ingrese Código de Factura');
		readln(arCodF[i]);
		writeln('ingrese Fecha de Factura');
		ingresoFecha(i);
		writeln('ingrese Descripción de Factura');
		readln(arDescriF[i]);
		writeln('ingrese Monto de Factura');
		readln(arMontoF[i]);
	end;
end;

function buscarF(code:Integer): Integer;
begin
	for i := 1 to 10 do
	begin
		if code=arCodF[i] then
		begin
			buscarF:=arCodF[i];
		end;
	end;
end;
function buscarFP(code:Integer): Integer;
begin
	for i := 1 to 10 do
	begin
		if code=arCodF[i] then
		begin
			buscarFP:=i;
		end;
	end;
end;
function buscarFPDescripcion(args:String): Integer;
begin
	for i := 1 to 10 do
	begin
		if args=arDescriF[i] then
		begin
			buscarFPDescripcion:=i;
		end;
	end;
end;
function buscarFClean(): Integer;
var
	code: Integer;
begin
	writeln('Escriba el codigo de su factura');
	readln(code);
	code:=buscarFP(code);
	buscarFClean:=code;
end;
function buscarFCleanDescripcion(): Integer;
var
	desc: String;
begin
	writeln('Escriba la Descripción de su factura');
	readln(desc);
	buscarFCleanDescripcion:=buscarFPDescripcion(desc);
end;

procedure printFactura(posici:Integer);
begin
	writeln('------CODIGO------');
	writeln(arCodF[posici]);
	writeln('------FECHA-------');
	writeln(arFecha[posici]);
	writeln('---DESCRIPCION----');
	writeln(arDescriF[posici]);
	writeln('-------MONTO-------');
	writeln(arMontoF[posici]);
end;

procedure resetFactura(lugar:Integer);
begin
	arFecha[lugar]:='';
	arCodF[lugar]:=0;
	arDescriF[lugar]:='';
	arMontoF[lugar]:=0;
end;

procedure abonarFacturas();
var
	pos, abono: Integer;
	code: Integer;
begin
	writeln('Escriba el codigo de su factura  a abonar');
	readln(code);
	pos:=buscarF(code);
	printFactura(pos);
	writeln('###############################');
	writeln('#### Cuanto desea abonarle? ###');
	writeln('###############################');
	readln(abono);
	arMontoF[pos]:=arMontoF[pos]-abono;
	if arMontoF[pos]<1 then
	begin
		writeln('################################');
		writeln('########FACTURA CODIGO##########');
		writeln('--------',arCodF[pos],'---------------');
		writeln('################################');
		writeln('------------SALDADA-------------');
		writeln('################################');
		resetFactura(pos);
	end;
	
end;

procedure buscarFacturaMostrarMonto();
var
	tempor, opt: Integer;
begin
	writeln('1- Buscar por Codigo');
	writeln('2- Buscar por Descripción');
	readln(opt);
	case opt of
		1:begin
			tempor:=buscarFClean();
			printFactura(tempor);
		end;
		2:begin
			tempor:=buscarFCleanDescripcion();
			printFactura(tempor);
		end;
	end

end;

procedure montoTotal();
var
	total: Integer=0;
begin
	for i := 1 to 10 do
	begin
		total:=total +arMontoF[i];
	end;
	writeln('El monto total es: ', total);
end;

begin
	clrscr;
	while cont do
	begin
		menu;
		readln(opcion);
		case opcion of
			1: registroFacturas;
			2: abonarFacturas;
			3: buscarFacturaMostrarMonto;
			4: montoTotal;
			5: cont:=false;
		end			
	end;
end.