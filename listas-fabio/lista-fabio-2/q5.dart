// Leia 3 numeros e escreva-os em ordem crescente.

import '../io_utils.dart';

void main() {
  var entrada = input("Insira 3 numeros (ex.: '5 0 3'): ").split(" ")
    .map((e) => int.parse(e)).toList();

  var numsOrdenados = ordenarNums(entrada);

  print("Numeros ordenados: $numsOrdenados");

}

List<int> ordenarNums(List<int> nums) {
  int numMaior, numMedio, numMenor;

  if (nums[0] > nums[1]) {
    numMedio = nums[0];
    numMenor = nums[1];
  } else {
    numMedio = nums[1];
    numMenor = nums[0];
  }

  if (nums[2] > numMenor) {
    if (nums[2] > numMedio) {
      numMaior = nums[2];
    } else {
      numMaior = numMedio;
      numMedio = nums[2];
    }
  }
  else {
    numMaior = numMedio;
    numMedio = numMenor;
    numMenor = nums[2];
  }

  return [numMenor, numMedio, numMaior].toList();
}
