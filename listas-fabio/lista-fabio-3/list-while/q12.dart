import '../../io_utils.dart';

void main(List<String> args) {
  var qtd = getNumber("Quantos numeros -> ");
  num soma = 0;
  var media;

  var counter = 1;
  while (counter <= qtd) {
    soma += getNumber("Insira o $counterº numero -> ");
    counter++;
  }

  media = soma / qtd;

  print("Soma: $soma");
  print("media: $media");
}