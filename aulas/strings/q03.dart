import '../../io_utils.dart';

void main(List<String> args) {
  
  String frase = input("Insira uma frase -> "); // Lenhadora de Bonsai
  var novaFrase = "";

  for (var i = 0; i < frase.length; i++) {
    if ( !(frase[i] == " ") ){
      novaFrase += frase[i];
      print(novaFrase);
    }
  }
  
  print("Nova frase: $novaFrase");

}