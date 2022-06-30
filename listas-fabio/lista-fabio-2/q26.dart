// Leia os 3 lados de um triangulo e identifique sua hipotenusa e seus cateteto


import '../../io_utils.dart';

void main(List<String> args) {
  var lados = input("Insira os 3 lados de um triangulo.").split(" ").map((e) => double.parse(e)).toList();

  var hipotenusa = identHip(lados);
  var catetos = identCat(lados).join(", ");

  print("Hipotenusa: $hipotenusa");
  print("Catetos: $catetos");
}

double identHip(List<double> lados) {

  double lado1 = lados[0];
  double lado2 = lados[1];
  double lado3 = lados[2];

  if(lado1 >= lado2 && lado1 >= lado3){
    return lado1;
  } else if(lado2 >= lado1 && lado2 >= lado3){
    return lado2;
  } else if(lado3 >= lado1 && lado3 >= lado2){
    return lado3;
  }

  throw Exception("Não foi possivel completar a operação");

}
List<double> identCat(List<double> lados) {

  double lado1 = lados[0];
  double lado2 = lados[1];
  double lado3 = lados[2];

  if(lado1 >= lado2 && lado1 >= lado3){
    return [lado2, lado3];
  } else if(lado2 >= lado1 && lado2 >= lado3){
    return [lado1, lado3];
  } else if(lado3 >= lado1 && lado3 >= lado2){
    return [lado1, lado2];
  }

  throw Exception("Não foi possivel completar a operação");

}