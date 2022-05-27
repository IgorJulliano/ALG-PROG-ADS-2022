import 'dart:io';

void main() {

  var nota1;
  var nota2;
  double media;

  var op = 1;
  
  while(op == 1){
    nota1 = getNumberOnRange(0, 10, "nota invalida",);
    nota2 = getNumberOnRange(0, 10, "nota invalida",);

    media = (nota1 + nota2) / 2;

    print("media = ${media.toStringAsFixed(2)}");

    print("novo calculo (1-sim 2-nao)");
    op = getNumberOnRange(1, 2, "novo calculo (1-sim 2-nao)").toInt();
  }
}

num getNumberOnRange(num min, num max,String errorMessage){
  var number = double.parse(stdin.readLineSync()?? "");

  while (!isOnRange(number, min, max)){
    print(errorMessage);
    number = double.parse(stdin.readLineSync()?? "");
  }

  return number;
}

bool isOnRange(num number, num min, num max) {
  return (min <= number) && (number <= max);
}