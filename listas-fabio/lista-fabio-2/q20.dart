// Leia a medida de um angulo entre 0 e 360 graus e escreva o quadrante em que o angulo se localiza.

import '../io_utils.dart';

void main(List<String> args) {
  var angulo = double.parse(input("Insira um angulo em graus (0-360): "));

  var quad = verificarQuadrante(angulo);

  print("O angulo se apresenta no $quadº quadrante.");
}

int verificarQuadrante(double angulo) {

  // var quad =  (((angulo % 360) - 1) ~/ 90) + 1; // solução matemática
  // return quad;

  angulo = angulo % 360;

  if(angulo <= 90) return 1;
  else if(angulo <= 180) return 2;
  else if(angulo <= 270) return 3;
  else if(angulo <= 360) return 4;
  return -1;
}