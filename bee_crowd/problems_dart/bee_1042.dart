import 'dart:io';

void main() {
  var entrada = (stdin.readLineSync()?? '').split(" ").map((e) => int.parse(e)).toList();

  List<int> ordenados = ordenar(entrada);

  ordenados.forEach((e)=> print(e));
  print("");
  entrada.forEach((e)=> print(e));
}

List<int> ordenar(List<int> entrada) {

  int num1 = entrada[0];
  int num2 = entrada[1];
  int num3 = entrada[2];

  if(num1 < num2){

    if(num3 < num1) return [num3, num1, num2];
    if(num2 < num3) return [num1, num2, num3];
    else return [num1, num3, num2];

  }
  else{

    if(num3 < num2) return [num3, num2, num1];
    if(num1 < num3) return [num2, num1, num3];
    else return [num2, num3, num1];

  }
}