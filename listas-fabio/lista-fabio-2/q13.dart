// leia 5 numeros inteiros e excreva o maior e o menor deles. Considere que todos os valores são diferentes.

import '../../io_utils.dart';

void main() {
  var entrada = input("Insira 5 numeros: ").split(" ")
    .map((e) => int.parse(e)).toList();
  
  var maior = verfMaior(entrada);
  var menor = verfMenor(entrada);

  print("Maior: $maior\nMenor: $menor");
  
}

int verfMaior(List<int> numbers) {
  var maior = numbers[0];

  if(numbers[1] > maior) maior = numbers[1];
  if(numbers[2] > maior) maior = numbers[2];
  if(numbers[3] > maior) maior = numbers[3];
  if(numbers[4] > maior) maior = numbers[4];

  return maior;
}

int verfMenor(List<int> numbers) {
  var menor = numbers[0];
  
  if(numbers[1] < menor) menor = numbers[1];
  if(numbers[2] < menor) menor = numbers[2];
  if(numbers[3] < menor) menor = numbers[3];
  if(numbers[4] < menor) menor = numbers[4];

  return menor;

}