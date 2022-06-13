import '../../io_utils.dart';

void main(List<String> args) {
  num numero = getNumber("Insira um numero");
  num limiteInf = getNumber("Numero minimo -> ");
  num limiteSup = getNumber("Numero máximo -> ");

  var x = limiteInf;
  while (x < limiteSup) {
    x % numero == 0 ? print("$x é multiplo de $numero") : null;
    x++;
  }
} 