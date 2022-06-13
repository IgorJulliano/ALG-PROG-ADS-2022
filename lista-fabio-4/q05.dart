import '../io_utils.dart';

void main(List<String> args) {
  
  var x = getNumber("Insert a number -> ");
  var n = getNumber("Insert a number -> ");

  while(n > 2){
    print("$x / $n = ${x/n}");
    x = x / n;
    n--;
  }
  
}