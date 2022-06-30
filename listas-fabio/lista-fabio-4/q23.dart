import 'dart:math';

import '../io_utils.dart';

void main(List<String> args) {
  
  var primTermo = getNumber("Insira o numero incial -> ");
  var razao = getNumber("Insira a razão -> ");
  var qtdTermos = getNumber("Insira a quantidade de elementos -> ");

  var resultado;

  var counter = 0;
  while(counter < qtdTermos){
    resultado = primTermo * pow(razao, counter);
    print("$resultado");
    counter++;
  }
  
  print("Resultado: $resultado");
  // var somaPG = ;
}