// Leia quatro numeros (opção, num1, num2 e num3) e que escreva o valor de num
// se aopção for 1, valor de num2 se a opção for 2 e o valor de num3 se a opção
// for 3

import '../../io_utils.dart';

void main(){
  var num1 = int.parse(input("Insira um numero: "));
  var num2 = int.parse(input("Insira um numero: "));
  var num3 = int.parse(input("Insira um numero: "));
  var op = int.parse(input("Escolha 1 2 ou 3: "));

  if(validarOpcao(op, 1, 4)){
    var result = evocarOpcao(op, num1, num2, num3);
    print("Numero escolhido: $result");
  }
}

int evocarOpcao(int op, int num1, int num2, int num3) {
  switch (op) {
    case 1: return num1;
    case 2: return num2;
    case 3: return num3;
    default: return -1;
  }
}

//                     inclusive
//                        \/      ┌ exclusive
bool validarOpcao(int op, int i, int j) {
  return i <= op && op < j;
}