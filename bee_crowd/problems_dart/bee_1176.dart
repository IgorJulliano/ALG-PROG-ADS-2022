import "dart:io";

void main() {

  var fibNumbers = List.filled(60, 0);
  var tamanho = fibNumbers.length;

  var entrada;

  var qtd = getNumber(""); // lines[0]
  
  fibNumbers[0] = 0;
  fibNumbers[1] = 1;
  
  for (var i = 2; i < tamanho; i++) {
    fibNumbers[i] = fibNumbers[i-2] + fibNumbers[i-1];
  }
  
  for (var i = 0; i < qtd; i++) {
    entrada = getNumber("").toInt(); // lines[i+1]
    print("Fib($entrada) = ${fibNumbers[entrada]}");
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