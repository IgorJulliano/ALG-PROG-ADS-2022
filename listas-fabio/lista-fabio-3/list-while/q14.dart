import 'dart:math';

import '../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("insira um número -> ");
  num quadrado = 0;

  var counter = 1;
  while (counter <= sqrt(numero)) {
    quadrado = counter * counter;
    counter++;
  }
  print("Menor quadrado até este número: $quadrado");
}