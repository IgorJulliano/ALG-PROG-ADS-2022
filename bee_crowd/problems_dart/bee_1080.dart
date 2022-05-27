import 'dart:io';

import '../../io_utils.dart';

void main() {
  //entrada
    var valor;
    var counter = 1;
    var maior = - double.maxFinite;
    var posicao_maior = counter;
    
    //process

    while (counter <= 10) {
        valor = int.parse(stdin.readLineSync()?? "");
        
        counter++;

        if (valor > maior) {
            maior = valor;
            posicao_maior = counter;
        }
        

    }

    //saida
    print(maior);
    print(posicao_maior);
}