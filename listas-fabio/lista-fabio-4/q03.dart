import '../../io_utils.dart';

void main(List<String> args) {
  int numA = getNumber("Insira um numero inteiro: ").toInt();
  int numB = getNumber("Insira um numero inteiro: ").toInt();

  num mdc = calcularMDC(numA, numB);

  print("Máximo Divisor Comum: $mdc");
}