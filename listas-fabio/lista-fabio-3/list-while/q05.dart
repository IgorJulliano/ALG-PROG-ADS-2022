import '../../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("Insira um numero -> ");
  var fatorial = 1;
  var counter = 1;
  while(counter <= numero){
    fatorial *= counter;
    counter++;
  }
  print("Fatorial: $fatorial");
}