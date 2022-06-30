import '../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("Insira um núermo -> ");
  var numSequencia = 0;

  var counter = 1;
  while (counter <= numero) {
    numSequencia += counter;
    print("$counterº -> $numSequencia");
    counter++;
  }
}
