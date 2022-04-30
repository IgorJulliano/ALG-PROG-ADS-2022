// Total: R$ 

import 'dart:io';

void main(List<String> args) {
  
  var entrada = (stdin.readLineSync()?? '').split(" ").map((e) => int.parse(e)).toList();

  int produto = entrada[0];
  int quantidade = entrada[1];

  double preco = verificarCodigo(produto);

  double valorTotal = (preco * quantidade);

  print("Total: R\$ ${valorTotal.toStringAsFixed(2)}");



}

double verificarCodigo(int cod) {

  if(cod == 1) return 4.00;
  else if(cod == 2) return 4.50;
  else if(cod == 3) return 5.00;
  else if(cod == 4) return 2.00;
  else if(cod == 5) return 1.50;
  return 0;
}