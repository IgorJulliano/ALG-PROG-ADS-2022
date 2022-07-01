import "dart:io";

void main() {

  List<int> vetor = List.filled(10, 0);

  var numero = getNumber("").toInt();
  
  for (var i = 0; i < vetor.length; i++) {
    vetor[i] = numero;
    numero *= 2;
  }
  
  for (var i = 0; i < vetor.length; i++) {
    print("N[$i] = ${vetor[i]}");
  }
  
}

num getNumber(String output) {
  var inp = input(output);
  var number = num.tryParse(inp);

  while (number == null) {
    print("Insira um numero");
    inp = input(output);
    number = num.tryParse(inp);
  }
  return number;
}
String input(String output) {
  stdout.write(output);
  return stdin.readLineSync() ?? "";
}