import '../../io_utils.dart';

void main(List<String> args) {
  int numA = getNumber("Insira um numero inteiro: ").toInt();
  int numB = getNumber("Insira um numero inteiro: ").toInt();

  num mmc = calcularMMC(numA, numB);

  print("Mínimo Múltiplo Comum: $mmc");
}