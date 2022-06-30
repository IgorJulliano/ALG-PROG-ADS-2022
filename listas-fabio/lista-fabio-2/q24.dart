// Leia os coeficientes A B e C de uma equação quadratica e escreva suas raizes.


import 'dart:math';

import '../io_utils.dart';

void main(List<String> args) {
  double a = double.parse(input("Insira o coeficiente A: "));
  double b = double.parse(input("Insira o coeficiente B: "));
  double c = double.parse(input("Insira o coeficiente C: "));

  if(a == 0){
    print("Insira um valor diferente de 0 para o coeficiente A!");
    return;
  }

  var raizes = calcularRaizesQuadraticas(a, b, c).join(",");

  print("Raizes: $raizes");
}

Iterable<double> calcularRaizesQuadraticas(double a, double b, double c) {

  double delta = (b*b)-(4*a*c);

  double x1 = ((-b) + sqrt(delta)) / (2 * a);
  double x2 = ((-b) - sqrt(delta)) / (2 * a);

  if(x1.isNaN || x2.isNaN){
    throw Exception("A equação não apresenta raizes ou ocorreu um erro ao calcula-las.");
  }

  return [x1,x2];
}