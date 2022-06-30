// Leia um numero X e, a seguir, leia e escreva uma lista de números com o término da lista ocorrendo
// quando a soma de dois números consecutivos da lista for igual a X.

import '../../io_utils.dart';

void main(List<String> args) {
  var number = getNumber("Insert a number -> ");
  num anterior = getNumber("Insert a number  -> ");
  num atual = getNumber("Insert a number  -> ");

  while ((anterior + atual) != number){
    
    anterior = atual;
    atual = getNumber("Insert a number  -> ");

  }
  print("Perfect sum");
}
