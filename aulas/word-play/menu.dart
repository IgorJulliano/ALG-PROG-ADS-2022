import 'dart:io';

import './str_utils.dart';
import '../io_utils.dart';
import 'questoes.dart';

void main(List<String> args) {

  const fl = './palavras';
  var palavras = loadFile(fl).split('\n');
  print('${palavras.length} palavras carregados!');

  ///

  printMenu();
  var op = int.parse(input('Selecione: '));

  while (op != 0) {
    if(op == 1) quest01(palavras);
    else if(op == 2) quest02(palavras);
    else if(op == 3) quest03(palavras);
    else if(op == 4) quest04(palavras);
    else if(op == 5) quest05(palavras);
    else if(op == 6) quest06(palavras);

    input("Pressione enter para continue.\n");

    clear();
    printMenu();
    op = int.parse(input("Selecione: "));
  }

  print("Fim!");
}


