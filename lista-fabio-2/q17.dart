// Leia valores inteiros em duas variaveis distintas e se o resta da divisão da
// primeira pela segunda
// for 1 escreva a soma dessas variaveis mais o resto da divisão;
// Se for 2 escreva se o primeiro e segundo valor são pares ou impares;
// Se for 3, multiplique a soma dos valores lidos pelo primeiro;
// Se for 4 divida a soma dos numeros lidos pelo segundo, se este for difernte de zero.
// Em qualquer outra situação escreva o quadrado dos numeros lidos



import '../io_utils.dart';

void main(List<String> args) {
  int num1 = int.parse(input("Insira um numero: "));
  int num2 = int.parse(input("Insira um numero: "));

  var saida;
  int resto = num1 % num2;

  if (resto == 1) {

    saida = num1 + num2 + resto;
    print("A soma dos numeros mais o resto da divisão: $saida");

  } else if (resto == 2) {

    if(ehPar(num1)) print("Primeiro numéro par");
    else print("Primeiro numéro impar");

    if(ehPar(num2)) print("Segundo numéro par");
    else print("Segundo numéro impar");
  } else if (resto == 3) {

    saida = (num1 + num2) * num1;
    print("A soma dos numeros multiplicado pelo primeiro: $saida");

  } else if (resto == 4) {

    if (num2 == 0) {
      print("Segundo numero igual a 0");
    } else{
      saida = (num1 + num2) / num2;
    print("A soma dos numeros divididos pelo segundo: $saida");
    }
  } else {
    var sqr1 = num1 * num1;
    var sqr2 = num2 * num2;

    print("Quadrado do primeiro: $sqr1");
    print("Quadrado do segundo: $sqr2");
  }
}

bool ehPar(int number){
  return number % 2 == 0;
}