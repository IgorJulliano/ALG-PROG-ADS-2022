// Um numero é um quadrado perfeito quando a raiz quadrada do numero é igual a
// soma das dezenas formadas pelos seus dois primeiro e dois ultimos digitos

import '../../io_utils.dart';

void main(List<String> args) {
  var numero = input("Insira um numero de 4 digitos: ");

  bool quadPerfeito = verificarQuadradoPerfeito(numero);

  if(quadPerfeito)print("É quadrado perfeito!");
  else print("Não é quadrado perfeito.");
  }
  
  bool verificarQuadradoPerfeito(String numero) {
    var num1 = int.parse(numero[0] + numero[1]);
    var num2 = int.parse(numero[2] + numero[3]);
    var numeroInt = int.parse(numero);

    var quad = num1 + num2;
    if(quad * quad == numeroInt) return true;
    else return false;
  }