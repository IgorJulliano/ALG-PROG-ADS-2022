import '../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("Insira o numero de N -> ");
  num soma = 0;

  var counter = 1;
  while (counter <= numero) {
    if (ehImpar(counter))
      soma += counter / (numero - (counter - 1));
    else
      soma -= (numero - (counter - 1)) / counter;

    counter++;
  }
  var somaText = soma.toStringAsFixed(4);
  print("S = $somaText");
}
