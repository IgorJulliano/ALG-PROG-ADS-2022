import '../../io_utils.dart';

void main(List<String> args) {
  
  var number = getNumber("Insert a number -> ");

  var dividendo = number;
  //    dividendo >= 1
  while(dividendo >= 1){
    dividendo = dividendo / 2;
  }

  print("Dividendo: $dividendo");
  
}