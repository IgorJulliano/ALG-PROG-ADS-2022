
import '../io_utils.dart';

bool isAbecedarian(String word){

  word = word.toLowerCase();

  for (var i = 0; i < word.length - 1; i++) {
    if(!(word.codeUnits[i] <= word.codeUnits[i + 1])) return false;
  }
  return true;  
}
//                  abacaxi             aei
bool usesAll(String word, List<String> letters){
  
  for (var letter in letters) {
      if(!hasLetter(word, letter)) return false;
  }

  return true;
  
}

bool usesOnly(String word, List<String> letters){

  for (var char in word.split('')) {
    if(!hasLetter(letters.join(), char)) return false;
  }

  return true;
}

bool avoids(String word, List<String> letters){
  for(var letter in letters){
    if(hasLetter(word, letter)) return false;
  }
  return true;
}

bool hasLetter(String word, String letter){
  for (var char in word.split('')) {
    if(char == letter) return true;
  }
  return false;
}

bool containsMoreThan(String word, int qtt){
  return word.length > qtt;
}

void askForPrint(List<String> palavras){
  var x = 1;
  var inp = input("Você deseja vizualizar estas palavras? (y)es, (n)o: ");

  if(inp == "y"){
    palavras.forEach((element) {
      print("$x\t$element");
      });
  }
}