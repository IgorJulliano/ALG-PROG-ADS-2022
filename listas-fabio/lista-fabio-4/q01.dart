import '../../io_utils.dart';

// Leia uma lista de números e que para cada número lido, escreva o próprio número e a relação de seus
// divisores (flag = 0).
void main(List<String> args) {
  
  num number = 1;

  //    (!number == 0)
  while(number != 0){
    number = getNumber("Insert a  number -> "); // convergencia de dados
    print("Number: $number");

    for (var i = 1; i <= number; i++) {

      if(number % i == 0) print("Divisor: $i");
      else print("Numero: $i");
    }

  }

}



// for(let index = 0; index < array.length; index++){
//   let item = array[index];

// }