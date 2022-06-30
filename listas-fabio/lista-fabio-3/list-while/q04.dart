import 'dart:math';

import '../../../io_utils.dart';

void main(List<String> args) {
  
  var numA = getNumber("Insira o numero incial -> ");
  var limite = getNumber("Insira o limite -> ");
  var numR = getNumber("Insira a razão -> ");

  var resultadoProgressao;

  var counter = 0;
  while(counter < limite){

    resultadoProgressao = numA * (pow(numR, counter));

    if(resultadoProgressao <= limite) print("PA $counter: $resultadoProgressao");
    else {
      print("PG $counter: Valor mais alto que limite, saindo...");
      break;
    }
    counter++;
  }
  
}