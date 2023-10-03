%{
#include <stdio.h>
#include <string.h>
#include "sintactico.tab.h"

void insertar(int nodo, char *nombre, char *valor);
%}

%%

while|do|for|foreach    {insertar(nodo,"Ciclo","yytext");}
checked|fixed|lock  {insertar(nodo,"Estado","yytext");}
namespace   {insertar(nodo,"Nombre de Espacio","");}
int|char|float|short|long|byte|double|sbyte|string|ulong|integer|boolean|const|enum|dynamic|tuple   {insertar(nodo,"Tipo de Dato","yytext");}
using   {insertar(nodo,"Uso","");}
random  {insertar(nodo,"Aleatorio","");}
<|>|<=|>=|!=    {insertar(nodo,"Operacion Relacional","yytext");}
goto|return|break   {insertar(nodo,"Salto","yytext");}
main    {insertar(nodo,"Menu","");}
new {insertar(nodo,"Nuevo","");}
object  {insertar(nodo,"Objeto","");}
alert   {insertar(nodo,"Alerta","");}
message {insertar(nodo,"Mensaje","");}
null|none   {insertar(nodo,"Nulo","yytext");}
clear   {insertar(nodo,"Limpieza","");}
Math.abs|Math.exp|Math.log  {insertar(nodo,"Funcion Aritmetica","yytext");}
else|catch|otherwise    {insertar(nodo,"Default","yytext");}
raise   {insertar(nodo,"Raiz","");}
switch|if|try   {insertar(nodo,"Condicion","yytext");}
abstract|class|record   {insertar(nodo,"Clase","yytext");}
case    {insertar(nodo,"Casos","");}
private|static|protected|public|local|internal|sealed|implicit|explicit {insertar(nodo,"Acceso","yytext");}
<head>  {insertar(nodo,"encabezado","");}
<body>  {insertar(nodo,"Cuerpo","");}
<class>  {insertar(nodo,"Eclase","");}
<paragraph> {insertar(nodo,"Paragrafo","");}
script  {insertar(nodo,"Script","");}
<div>   {insertar(nodo,"Division","");}
<strong>    {insertar(nodo,"Enfasis","");}
</head> {insertar(nodo,"encabezadof","");}
</body> {insertar(nodo,"Cuerpof","");}
</class>    {insertar(nodo,"Clasef","");}
</paragraphf>    {insertar(nodo,"Paragrafof","");}
</script>  {insertar(nodo,"Scriptf","");}
</div>   {insertar(nodo,"Divisionf","");}
</strong>    {insertar(nodo,"Enfasisf","");}
Math.acos|Math.acosh|Math.asin|Math.asinh|Math.atan|Math.atan2|Math.atanh|Math.cos|Math.cosh|Math.sin|Math.sinh|Math.tan|Math.tanh  {insertar(nodo,"Func_trig","yytext");}
Pause   {insertar(nodo,"Pausa","");}
Cin {insertar(nodo,"Entrada","");}
Cout|printf|print|println|scan|scanf|input  {insertar(nodo,"Impresion","yytext");}
and|or|not|&&   {insertar(nodo,"Operacion Logica","yytext");}
array   {insertar(nodo,"Arreglo","");}
{   {insertar(nodo,"LlaveA","");}
}   {insertar(nodo,"LlaveB","");}
(|)   {insertar(nodo,"Agrupacion","yytext");}
system {insertar(nodo,"Sistema","");}
ChangeType|ToBoolean|ToByte|ToChar|ToDateTime|ToDecimal|ToDouble|ToHexString|ToInt16|ToInt32|ToInt64|ToSByte|ToSingle|ToString|ToUInt16|ToUInt32|ToUInt64   {insertar(nodo,"CAmbioValor","yytext");}
Parse   {insertar(nodo,"AnalizadorGramatico","");}
void    {insertar(nodo,"Vacio","");}
Math.log10|Math.log1p|Math.log2|Math.max|Math.min|Math.random|Math.sort|Math.shuffle|Math.choice|Math.round|Math.sqrt   {insertar(nodo,"Funcion Logica","yytext");}
Math.pow|Math.ceil|Math.floor|Math.cbrt|Math.exp    {insertar(nodo,"Funcion Exponente","yytext");}
Math.sign|Math.randint  {insertar(nodo,"Funcion de Retorno","yytext");}
bytes   {insertar(nodo,"RetomaEnDatos","");}
__raise {insertar(nodo,"ClaseSinEvento","");}
__stdcall   {insertar(nodo,"ConvencionCall","");}
final   {insertar(nodo,"Final","");}
__m128  {insertar(nodo,"definirtipodato","");}
_ptr32  {insertar(nodo,"punteronat32","");}
_ptr64  {insertar(nodo,"punteronat64","");}
native  {insertar(nodo,"Nativo","");}
__restrict  {insertar(nodo,"Restriccion","");}
transient   {insertar(nodo,"Transcendiente","");}
get {insertar(nodo,"Tomar","");}
set {insertar(nodo,"AlmacenarRecuperacion","");}
arguments   {insertar(nodo,"Argumento","");}
instanceof  {insertar(nodo,"Instancia","");}
module  {insertar(nodo,"Modulo","");}
requires    {insertar(nodo,"Requerimiento","");}
strictfp    {insertar(nodo,"Estricto","");}
*|/|-|(+')  {insertar(nodo,"Operadores","yytext");}
(=')    {insertar(nodo,"Asignacion","");}
import  {insertar(nodo,"ImportaLibreria","");}
lambda  {insertar(nodo,"EvitarCodeInnecesario","");}
pass    {insertar(nodo,"Paso","");}
__alignof   {insertar(nodo,"cantidadAlma","");}
or_eq   {insertar(nodo,"Or Alternativo","");}
__assume    {insertar(nodo,"Asumir","");}
__based {insertar(nodo,"punterodeclara","");}
__cdecl {insertar(nodo,"Convecion ","");}
__declspec  {insertar(nodo,"AtributExtens","");}
__event {insertar(nodo,"Evento","");}
__except    {insertar(nodo,"EvitaBloques","");}
__fastcall  {insertar(nodo,"LlamadaRapida","");}
Try-finally {insertar(nodo,"ConjuntoFinally","");}
__forceinline|__inline  {insertar(nodo,"especificadores","yytext");}
__hookd {insertar(nodo,"Vincular","");}
__if_exists {insertar(nodo,"SiExiste?","");}
__if_not_exists {insertar(nodo,"SiNoExiste?","");}
__super {insertar(nodo,"ImplementacionClase","");}
__thiscall  {insertar(nodo,"LlamadaObjeto","");}
__unaligned {insertar(nodo,"punterodeclara","");}
__unhook    {insertar(nodo,"Desvicular","");}
__uptr  {insertar(nodo,"puntero32","");}
__uuidof    {insertar(nodo,"Expresion ","");}
__vectorcall    {insertar(nodo,"Convesion ","");}
__virtual_inheritancee  {insertar(nodo,"Herencia","");}
__w64   {insertar(nodo,"indet64","");}
__wchar_t   {insertar(nodo,"Tipo de dato","");}
Math.random.normal|Math.random.binomial|Math.random.poisson|Math.random.uniform|Math.random.logistic|Math.random.multinomial|Math.random.exponential|Math.random.chisquare|Math.random.rayleigh {insertar(nodo,"Funcion Aleatoria","yytext");}
Int21H  {insertar(nodo,"Interrupcion","");}
Math.lcm    {insertar(nodo,"Funcion MCM","");}
Math.gcd     {insertar(nodo,"Funcion MCD","");}
Math.trunc|Math.fix|Math.around|Math.hypot  {insertar(nodo,"Funcion Retorno","yytext");}
Math.deg2rad    {insertar(nodo,"Funcion Grados a Radianes","");}
Math.rad2deg    {insertar(nodo,"Funcion Radianes a Grados","");}
Math.quadratic  {insertar(nodo,"Funcion Cuadratica","");}
Math.cubic  {insertar(nodo,"Funcion Cubica","");}
Math.squareArea|Math.rectArea|Math.circleArea|Math.triangleAreaMath.trapArea|Math.regpolyArea|Math.bigmul   {insertar(nodo,"Funcion Area","yytext");}
Math.BitDecrement|Math.BitIncrement {insertar(nodo,"Funcion Bit","yytext");}
Math.Clamp|Math.CopySing    {insertar(nodo,"Funcion Rango","yytext");}
Math.DivRem|Math.FusedMultiplyAdd   {insertar(nodo,"Funcion Operador","yytext");}
Math.MaxMagnitude|Math.MinMagnitude {insertar(nodo,"Funcion Magnitud","yytext");}
Math.pi {insertar(nodo,"Funcion PI","");}
Math.scale|Math.scaleB  {insertar(nodo,"Funcion Escala","yytext");}
__sptr  {insertar(nodo,"modificador","");}
add  {insertar(nodo,"Agregar","");}
remove  {insertar(nodo,"Remover","");}
struct  {insertar(nodo,"Estructura","");}
interface class {insertar(nodo,"Clase de Interfaz","");}
record  {insertar(nodo,"Grabar","");}
enum    {insertar(nodo,"Numero Exponencial","");}
exception   {insertar(nodo,"Excepcion","");}
callable    {insertar(nodo,"Invocar","");}
future  {insertar(nodo,"Futuro","");}
synchronized   {insertar(nodo,"Sincronizado","");} 
in  {insertar(nodo,"Dentro","");}
out {insertar(nodo,"Afuera","");}
implement   {insertar(nodo,"Implementar","");}
implements    {insertar(nodo,"Implementos","");}
//|#|-- {insertar(nodo,"Comentarios","yytext");}
exit    {insertar(nodo,"Salida","");}
die {insertar(nodo,"Muerto","");}
union   {insertar(nodo,"Union","");}
join    {insertar(nodo,"Unirse","");}
inner join  {insertar(nodo,"Coincidencias","");}
left join   {insertar(nodo,"UnionIzq","");}
right join  {insertar(nodo,"UndionDe","");}
full join   {insertar(nodo,"UnionLleno","");}
self join   {insertar(nodo,"AutoUnion","");}
clone   {insertar(nodo,"clonar","");}
copy    {insertar(nodo,"copia","");}
(++)    {insertar(nodo,"incremento","");}
(--)    {insertar(nodo,"decremento","");}
nil {insertar(nodo,"valorNoIniciado","");}
zeroes  {insertar(nodo,"zeros","");}
mutable {insertar(nodo,"mutables","");}
noexcept    {insertar(nodo,"Exepcion","");}
operator    {insertar(nodo,"Operadores","");}
signed  {insertar(nodo,"Tipo de Dato","");}
sizeof  {insertar(nodo,"cantidadAlma","");}
%%

int main(int argc, char **argv) {
    FILE *archivo;
    archivo = fopen(argv[1], "r");

    if (!archivo) {
        printf("No se pudo abrir el archivo.\n");
        return 1;
    }

    yyin = archivo;
    yylex();

    fclose(archivo);
    return 0;
}

void insertar(int nodo, char *nombre, char *valor) {
    printf("%d %s %s\n", nodo, nombre, valor);
}