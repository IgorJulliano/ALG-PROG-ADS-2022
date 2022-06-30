// Leia as coordenadas catesianas de dois pontos no plano que representam o
// canto de um retangulo. Baseado nisto, calcule e escreva a area desse retangulo

import '../../io_utils.dart';

void main(List<String> args) {
  var coord1 = input("Insira uma coordenada  cartesiana x,y (ex.: '2,3'): ")
    .split(",").map((e) => double.parse(e)).toList();
  var coord2 = input("Insira uma coordenada  cartesiana x,y (ex.: '5,7'): ")
    .split(",").map((e) => double.parse(e)).toList();
  
  var area = calcularAreaRet(coord1[0], coord1[1], coord2[0], coord2[1]);

  print("Area do retangulo: $area");

}


double calcularAreaRet(x1, y1, x2, y2){

  double height;
  double width;

  if(x1 > x2) width = x1 - x2;
  else width = x2 - x1;

  if(y1 > y2) height = y1 - y2;
  else height = y2 - y1;

  return width * height;

}