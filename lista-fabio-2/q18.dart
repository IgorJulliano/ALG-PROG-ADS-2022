// Leia dois valorese uma das seguintes operações a serem executadas
// codificadas da seguinte forma:
// 1 - Adição
// 2 - Subtração
// 3 - Multiplicação
// 4 - Divisão
// Calcule e escreva o resultado dessa operação sobre os dois valores lidos

import '../io_utils.dart';

void main(List<String> args) {

  print("1 - Adição");
  print("2 - Subtração");
  print("3 - Multiplicação");
  print("4 - Divisão");

  int op = int.parse(input("Seleciona um opção: "));

  var num1 = double.parse(input("Insira o primeiro numero: "));
  var num2 = double.parse(input("Insira o segundo numero: "));
  
  var result;

  if(op == 1){
    result = num1 + num2;
  } else
  if(op == 2){
    result = num1 - num2;
  } else
  if(op == 3){
    result = num1 * num2;
  } else
  if(op == 4){
    result = num1 / num2;
  }
  //Verificar se foi inserido um opção válida
  if(1 <= op && op <= 4) print("Resultado: $result");

}