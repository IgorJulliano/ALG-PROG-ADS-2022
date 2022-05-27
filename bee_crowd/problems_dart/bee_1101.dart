import 'dart:io';

void main() {
  Iterable<num> linha = (stdin.readLineSync() ?? "").split(" ").map(num.parse);
  num num1 = linha.elementAt(0);
  num num2 = linha.elementAt(1);

  num maior;
  num menor;
  num soma;

  while (num1 > 0 && num2 > 0){
    soma = 0;

    maior = max(num1, num2);
    menor = min(num1, num2);

    while (menor <= maior) {
      stdout.write("$menor ");
      soma += menor;
      menor++;
    }

    stdout.write("Sum=$soma\n");

    linha = (stdin.readLineSync() ?? "").split(" ").map(num.parse);
    num1 = linha.elementAt(0);
    num2 = linha.elementAt(1);

    
  }
}

max(num n1, num n2) {
  return n1 > n2 ? n1 : n2;
}

min(num n1, num n2) {
  return n1 < n2 ? n1 : n2;
}
