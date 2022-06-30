import '../../io_utils.dart';

void main(List<String> args) {
  
  String frase = input("Insira uma frase -> ");
  var novaFrase = "";

  for (var i = 0; i < frase.length; i++) {
    novaFrase+= frase[i] * 2;
  }
  
  print("Nova frase: $novaFrase");

}