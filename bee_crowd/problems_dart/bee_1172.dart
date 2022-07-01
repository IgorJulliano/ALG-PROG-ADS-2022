import "dart:io";

void main() {

  var input;
  List<int> entradas = [];
  
  int i = 0;
  while(i < 10){

    input = getNumber("").toInt();
    if(input <= 0){
      input = 1;
    }
    entradas.add(input);
    print("X[$i] = $input");

    i++;
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