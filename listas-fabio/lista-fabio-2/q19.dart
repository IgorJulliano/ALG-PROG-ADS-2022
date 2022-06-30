// Leia a altura e o peso de uma pessoam em seguida calcule o indice de massa
// corpore (imc). Ao final, escreva se a pessoa esta com
// peso normal (IMC abaixo de 25),
// obseso (IMC entre 25 e 30) ou
// obesidade morbida (IMC acima de 30).

import '../../io_utils.dart';

void main(List<String> args) {
  double altura = double.parse(input("Insira a altura (m): "));
  double peso = double.parse(input("Insira o peso (Kg): "));

  double imc = calcularIMC(altura, peso);

  String classif = classificarIMC(imc);

  print("IMC: $imc");
  print("Classificação: $classif");

}

String classificarIMC(double imc) {
  if (imc < 25) return "normal"; 
  else if (25 <= imc && imc <= 30) return "obesidade";
  else if (30 < imc) return "obesidade morbida";
  return "";
}

double calcularIMC(double altura, double peso) {
  return peso / (altura * altura);
}
