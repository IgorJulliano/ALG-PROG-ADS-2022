import 'dart:io';

void main() {

  int counter = 0;
  int linhas = int.parse(stdin.readLineSync()?? "");

  var X;
  var Y;
  var linha;
  var result;
  
  while(counter < linhas){


    linha = (stdin.readLineSync()??"").split(" ").map(int.parse);
    X = linha.elementAt(0);
    Y = linha.elementAt(1);

    if(Y == 0) print("divisao impossivel");
    else {
      result = X / Y;
      print(result.toStringAsFixed(1));
    }

    counter++;
  }
}