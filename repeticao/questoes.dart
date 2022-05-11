import '../io_utils.dart';
import 'str_utils.dart';

void printMenu() {
  String menu = '=====> IGU GAMEPLAYS TUTORIAIS 2024 CRACKEADO 100% SEM VIRUS <=====\n';
  menu += '1 - Palavras com mais de 20 caracteres\n'; // Exercicio 9.1
  menu += '2 - Mostrar e contar palavras sem uma determinada letra\n'; // Ecercicio 9.2
  menu += '3 - Mostrar e contar palavras que não contenham uma determinada lista de letras proibidas\n'; // Exercicio 9.3
  menu += '4 - Mostrar e contar palavras que usem somente uma determinada lista de letras\n'; // Exercicio 9.4
  menu += '5 - Mostrar e contar palavras que usem todas as letras de uma determinada lista de letras\n'; // Exercicio 9.5
  menu += '\n0 - Sair';

  print(menu);
}

//
void quest01(List<String> words) {
  var counter = 0;

  var quantity = 20;

  for (var word in words) {
    if (containsMoreThan(word, quantity)) {
      print(word);
      counter++;
    }
    ;
  }

  var perc = (counter / words.length) * 100;

  print("Existem ${counter} (${perc.toStringAsFixed(4)} %) palavra(s) com mais de 20 letras.");
}

void quest02(List<String> words) {
  var counter = 0;

  for (var word in words) {
    if (!hasLetter(word, 'e')) {
      print(word);
      counter++;
    }
  }

  var perc = (counter / words.length) * 100;

  print('Existem ${counter} (${perc.toStringAsFixed(4)} %) palavra(s) sem a letra "e".');
}

void quest03(List<String> words) {
  var counter = 0;

  var letters = input("Insira as letras proibidas: ").split('');

  for (var word in words) {
    if (avoids(word, letters)) {
      print(word);
      counter++;
    }
  }

  var perc = (counter / words.length) * 100;

  print('Existem ${counter} (${perc.toStringAsFixed(4)} %) palavra(s) sem a(s) letra(s) $letters.');
}

void quest04(List<String> words) {
  var counter = 0;
  var letters = input("Insira as letras obrigatórias: ").split('');

  for (var word in words) {
    if (usesOnly(word, letters)) {
      print(word);
      counter++;
    }
  }

  var perc = (counter / words.length) * 100;

  print('Existem ${counter} (${perc.toStringAsFixed(4)} %) palavra(s) que contem somente as letras "$letters".');
}

void quest05(List<String> words) {
  
  var counter = 0;
  var letters = input("Insira as letras obrigatórias: ").split("");

  for (var word in words) {
    if (usesAll(word, letters)){
      print(word);
      counter++;
    }
  }

  var perc = (counter / words.length) * 100;

  print('Existem ${counter} (${perc.toStringAsFixed(4)} %) palavra(s) que apresenta pelo menos uma letra de cada uma dentre "$letters".');
}

void quest06(List<String> words) {
  
  var counter = 0;

  for (var word in words) {
    if (isAbecedarian(word)){
      print(word);
      counter++;
    }
  }

  var perc = (counter / words.length) * 100;

  print('Existem ${counter} (${perc.toStringAsFixed(4)} %) palavra(s) que seguem a sequencia alfabética.');
}