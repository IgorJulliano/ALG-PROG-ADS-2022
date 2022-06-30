// leia um numero inteiro e escreva se este numero é par ou impar

import '../../io_utils.dart';

void main(){
  var entrada = int.parse(input("Insira um numero: "));

  if(ehPar(entrada)) print("O numero inserido é par.");
  else print("O numero inserido é ímpar");
}

bool ehPar(int entrada) { return entrada % 2 == 0; }