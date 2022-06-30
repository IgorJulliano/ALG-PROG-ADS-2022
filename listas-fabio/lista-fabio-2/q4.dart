// Leia um numero de dois digitos, verifique e escreva se o algarismo da dezena é diferente ou igual da unidade

import 'dart:ffi';
import 'dart:io';
import '../io_utils.dart';

void main(){
    var number = int.parse(input("Insira um numero de dois digitos: "));
    if(verifUnidadeDezena(number)) print("Unidade e dezena iguais.");
    else print("Unidade e dezena diferentes.");
}

bool verifUnidadeDezena(int n1) {
  var number = n1.toString();
  return number[0] == number[1];
}
