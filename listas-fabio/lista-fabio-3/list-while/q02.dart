import '../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("Insira um numeo -> ");
  var counter = 1;
  while (counter <= numero) {
    if(ehPar(counter)) print(counter);
    counter ++;
  }
}