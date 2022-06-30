// Leia 3 numeros (angulos de um triangulo) verifique e escreva se os 3
// formam um triangulo. Se formam, verifique se formam um 
// triangulo actangulo (3 angulos < 90º),
// triangulo retangulo (1 angulo igual a 90°) ou
// triangulo obtusangulo (1 angulo > 90°).

import 'dart:ffi';

import '../../io_utils.dart';

void main(List<String> args) {
  var entrada = input("Insira três numeros (angulos de um triangulo. Ex.: 60 90 30): ")
    .split(" ").map((e) => double.parse(e)).toList();

  double angulo1 = entrada[0];
  double angulo2 = entrada[1];
  double angulo3 = entrada[2];

  if(ehTriangulo(angulo1, angulo2, angulo3)){
    var tipo = verifTipoTriangulo(angulo1, angulo2, angulo3).name;
    print("Tipo do tringulo inserido: $tipo");
  }
  else print("Os dados angulos não forma um triangulo.");

}

bool ehTriangulo(double ang1, double ang2, double ang3){
  return ((ang1 + ang2 + ang3) == 180) &&
         (ang1 != 0 && ang2 != 0 && ang3 != 0);
}

TipoTriangulo verifTipoTriangulo(double ang1, double ang2, double ang3){
  if(ang1 < 90 && ang2 < 90 && ang3 < 90) return TipoTriangulo.acutangulo;
  else if(ang1 == 90 || ang2 == 90 || ang3 == 90) return TipoTriangulo.retangulo;
  else return TipoTriangulo.obtusangulo;
}

enum TipoTriangulo{
  retangulo,
  acutangulo,
  obtusangulo,
  none
}