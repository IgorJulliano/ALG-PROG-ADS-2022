import '../io_utils.dart';

void main(List<String> args) {
  int numA = getNumber("Insira um numero inteiro: ").toInt();
  int numB = getNumber("Insira um numero inteiro: ").toInt();

  int mmc = calcularMMC(numA, numB);

  print("mmc: $mmc");
}

int calcularMMC(num numA, num numB){
  int x = menor(numA, numB).toInt();

  while (maior(numA, x) % menor(numA, x) != 0
      || maior(numB, x) % menor(numB, x) != 0) x++;
  return x;
}