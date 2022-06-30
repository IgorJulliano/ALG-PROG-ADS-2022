import '../../io_utils.dart';

void main() {
  var numero = getNumber("Insira um numero -> ");

  if(ehInteiro(numero)) print("$numero é inteiro");
  else print("$numero é decimal");
}