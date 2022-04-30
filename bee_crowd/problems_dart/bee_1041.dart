import 'dart:io';

void main() {
  
  var pontos = (stdin.readLineSync()?? '').split(' ').map((e) => double.parse(e)).toList();

  String quadrante = verficarQuadrante(pontos[0], pontos[1]);

  print(quadrante);
  
}

String verficarQuadrante(double x, double y) {
  
  if(x == 0 && y == 0) return "Origem";
  else if(x == 0) return "Eixo Y";
  else if(y == 0) return "Eixo X";
  else if(x > 0 && y > 0) return "Q1";
  else if(x < 0 && y > 0) return "Q2";
  else if(x < 0 && y < 0) return "Q3";
  else if(x > 0 && y < 0) return "Q4";
  return '';
}



