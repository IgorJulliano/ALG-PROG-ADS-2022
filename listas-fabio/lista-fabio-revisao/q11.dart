import '../../io_utils.dart';

void main() {

  var numero = getNumber("Insira um numero entre 100 e 999 -> ");

  var unidade = unidades(numero);
  var dezena = dezenas(numero);
  var centena = centenas(numero);

  var textoUnidade = (unidade == 1) ? "unidade" : "unidades";
  var textoDezena = (dezena == 1) ? "dezena" : "dezenas";
  var textoCentena = (centena == 1) ? "centena" : "centenas";

  print("$unidade $textoUnidade $dezena $textoDezena $centena $textoCentena");
  
}

int centenas(num n) => (n / 100).floor();
int dezenas(num n) => ((n % 100) / 10).floor();
int unidades(num n) => (n % 10).toInt();