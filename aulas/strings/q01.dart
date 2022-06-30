import '../io_utils.dart';

void main() {
  
  var frase = input('Insira uma frase -> ');
  
  var fraseEncript = inverterTexto(frase);
  fraseEncript = substituirConsoantes(fraseEncript, "#");

  print("Frase encriptada: $fraseEncript");
  
}

String inverterTexto(String texto) {
  var novoTexto = '';
  for (var i = 0; i < texto.length; i++) {
    novoTexto = texto[i] + novoTexto;
  }
  return novoTexto;
}

String substituirConsoantes(String texto, String s) {
  var novoTexto = '';
  for (var i = 0; i < texto.length; i++) {
    if(ehConsoante(texto[i])){
      novoTexto += s;
    } else{
      novoTexto += texto[i];
    }
  }
  return novoTexto;
}
