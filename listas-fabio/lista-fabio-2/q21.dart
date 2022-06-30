// Realize o arredondamentos de dnumeros utilizando a regra usual da matematica:
// Se a parte fracionária for maior ou igual que 0,5, o numero é arredondado pra cima

import '../io_utils.dart';

void main(List<String> args) {
  var numero = double.parse(input("Insira um numero decimal: "));

  var numArredondado = arredondar(numero);

  print("Numero arredonda: $numArredondado");
}

int arredondar(double number){

  var numero = number.toString().split(".").map((e) => int.parse(e)).toList();
  var parteInteira = numero[0];
  var parteFracionada = numero[1];

  if(parteFracionada >= 5) parteInteira += 1;

  return parteInteira;
}