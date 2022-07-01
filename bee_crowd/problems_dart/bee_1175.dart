import "dart:io";

void main() {

  var vetor = List.filled(6, 0);
  var tamanho = vetor.length;
  var auxiliar;
  
  for (var i = 0; i < tamanho; i++) {
    vetor[i] = getNumber("").toInt();
  }

  var posTroca;
  for (var i = 0; i < tamanho / 2; i++) {
    posTroca = tamanho - 1 - i;

    auxiliar = vetor[i];

    vetor[i] = vetor[posTroca];
    vetor[posTroca] = auxiliar;
    
  }
  
  for (var i = 0; i < tamanho; i++) {
    print("A[$i] = ${vetor[i]}");
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