import '../../io_utils.dart';

void main(List<String> args) {
  var limiteInf = getNumber("Numero minimo -> ");
  var limiteSup = getNumber("Numero máximo -> ");

  var x = limiteInf;
  while (x < limiteSup) {
    ehPrimoWHILE(x) ? print("$x é primo") : null;
    x++;
  }
}