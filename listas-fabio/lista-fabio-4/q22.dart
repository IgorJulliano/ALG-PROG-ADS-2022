import '../io_utils.dart';

void main() {
  var dividendo = getNumber("Insira o dividendo -> "); // 10
  var divisor = getNumber("Insira o divisor -> ");     // 2

  num resto = dividendo;

  var quociente = 0;
  while(resto >= divisor){
    resto = dividendo - (quociente * divisor);
    quociente++;
  }

  print("$quociente");
  print("$resto");
  
}