import "dart:io";

void main() {

  List<double> vetor = List.filled(100, 0.0);
  
  for (var i = 0; i < vetor.length; i++) {
    vetor[i] = getNumber("").toDouble();
  }
  
  for (var i = 0; i < vetor.length; i++) {
    if(vetor[i] <= 10 ) print("A[$i] = ${vetor[i]}");
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