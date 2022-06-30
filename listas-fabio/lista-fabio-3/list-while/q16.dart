import '../../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("Insira um núermo -> ");

  var num1 = 0;
  var num2 = 1;
  var aux;

  print("> $num1");

  var counter = 0;
  while (counter < numero) {
    print("> $num2");
    
    aux = num2;
    num2 = num1 + num2;
    num1 = aux;
    
    counter++;
  }
}
