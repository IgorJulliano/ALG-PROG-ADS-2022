import '../../io_utils.dart';

void main(List<String> args) {
  
  var number = getNumber("Insert a number -> ");
  var counter = 0;
  while(counter <number.toString().length){
    counter++;
  }
  print("The number has $counter digits");
  print("The number has ${number.toString().length} digits");
  
}