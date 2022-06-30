import '../../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("Numero minimo -> ");
  var soma = 0;

  var x = 1;
  while (x < numero) {
    soma +=x;
    x++;
  }
}