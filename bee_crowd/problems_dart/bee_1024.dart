import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync() ?? "");
  String mensagem;
  String mensagemCript = '';

  var counter = 0;
  while (counter < numero) {
    mensagem = stdin.readLineSync() ?? "";

    mensagemCript = deslocarCaracteres(mensagem, 3);

    mensagemCript = inverterTexto(mensagemCript);

    mensagemCript = deslocarMetade(mensagemCript, -1);

    print(mensagemCript);

    counter++;
  }
}

String deslocarCaracteres(String mensagem, int offset) {
  var tamanho = mensagem.length;
  List<String> novoTexto = [];

  for (var i = 0; i < tamanho; i++) {
    if (ehLetra(mensagem[i])) {
      novoTexto.add(deslocarCharCode(mensagem[i], offset));
    } else {
      novoTexto.add(mensagem[i]);
    }
  }

  return novoTexto.join("");
}

String deslocarMetade(texto, int offset) {
  var tamanho = texto.length;
  var metade = tamanho ~/ 2;
  List<String> novoTexto = [];

  for (var i = 0; i < metade; i++) {
    novoTexto.add(texto[i]);
  }

  for (var i = metade; i < tamanho; i++) {
    novoTexto.add(deslocarCharCode(texto[i], offset));
  }
  return novoTexto.join("");
}

String deslocarCharCode(String mensagem, int offset) {
  return String.fromCharCode(mensagem[0].codeUnitAt(0) + offset);
}

ehLetra(String s) {
  var code = s.codeUnitAt(0);
  return code >= 65 && code <= 90 || code >= 97 && code <= 122;
}

String inverterTexto(String texto) {
  return texto.split("").reversed.join("");
}
