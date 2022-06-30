import '../../io_utils.dart';

void main(List<String> args) {
  int numA = getNumber("Insira um numero inteiro: ").toInt();
  int numB = getNumber("Insira um numero inteiro: ").toInt();

  int mmc = calcularMMC(numA, numB);

  print("mmc: $mmc");
}

int calcularMMC(num numA, num numB){
  int x = min(numA, numB).toInt();

  while (max(numA, x) % min(numA, x) != 0
      || max(numB, x) % min(numB, x) != 0) x++;
  return x;
}