// Leia 5 numeros inteiros, calcule a sua media e escreva os que são maiores que a média

import '../../io_utils.dart';

void main() {
  var entrada = input("Insira 5 numeros: ").split(" ")
    .map((e) => int.parse(e)).toList();

  double media = calcMedia(entrada);
  List<int> maiores = calcMaiores(entrada, media);

  print("Média: $media");
  print("Numeros maiores que a média: $maiores");
}

List<int> calcMaiores(List<int> numbers, double value) {
  List<int> list = [];
  if(numbers[0] > value) list.add(numbers[0]);
  if(numbers[1] > value) list.add(numbers[1]);
  if(numbers[2] > value) list.add(numbers[2]);
  if(numbers[3] > value) list.add(numbers[3]);
  if(numbers[4] > value) list.add(numbers[4]);

  return list;
}

double calcMedia(List<int> numbers) {
  int soma = 0;
  // utilizando for para evitar 'numbers[0] + numbers[1] ...'
  for (var i in numbers) {
    soma += i;
  }

  return soma / numbers.length;

} 