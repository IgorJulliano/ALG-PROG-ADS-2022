import '../io_utils.dart';

void main(List<String> args) {
  
  var frase = input("Insira uma frase -> "); // Lenhadora de Bonsai

  List<String> palavras = frase.split(" "); //  palavras = ['Lenhadora', 'de', 'Bonsai']

  for (var i = 0; i < palavras.length; i++) {
    print(palavras[i]);
  }

}