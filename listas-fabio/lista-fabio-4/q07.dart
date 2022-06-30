import '../io_utils.dart';

void main(List<String> args) {
  
  var firstNumber = getNumber("Insert the first number -> ");
  var number = getNumber("Insert a number -> ");

  while(number != firstNumber){
    number = getNumber("Insert a number -> ");
  }
  
  print("Same number!");
}