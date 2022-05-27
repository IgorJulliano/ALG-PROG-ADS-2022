import 'dart:io';

void main(List<String> args) {
  int counter = 0;
  int experimentos = int.parse(stdin.readLineSync() ?? "");

  int quantidade;

  var tipo;
  int qtdSapos = 0;
  double perSapos;
  int qtdRatos = 0;
  double perRatos;
  int qtdCoelhos = 0;
  double perCoelhos;

  int qtdTotal = 0;

  var linha;

  while (counter < experimentos) {
    linha = (stdin.readLineSync() ?? "").split(' ');

    quantidade = int.parse(linha.elementAt(0));
    tipo = linha.elementAt(1);

    if (ehSapo(tipo))
      qtdSapos += quantidade;
    else if (ehCoelho(tipo))
      qtdCoelhos += quantidade;
    else if (ehRato(tipo)) qtdRatos += quantidade;

    counter++;
  }

  qtdTotal = qtdCoelhos + qtdRatos + qtdSapos;
  perCoelhos = (qtdCoelhos / qtdTotal) * 100;
  perRatos = (qtdRatos / qtdTotal) * 100;
  perSapos = (qtdSapos / qtdTotal) * 100;
  
  print("Total: ${qtdTotal} cobaias");
  print("Total de coelhos: ${qtdCoelhos}");
  print("Total de ratos: ${qtdRatos}");
  print("Total de sapos: ${qtdSapos}");
  print("Percentual de coelhos: ${perCoelhos.toStringAsFixed(2)} %");
  print("Percentual de ratos: ${perRatos.toStringAsFixed(2)} %");
  print("Percentual de sapos: ${perSapos.toStringAsFixed(2)} %");
  
  
}

bool ehSapo(tipo) {
  return tipo == "S";
}
bool ehCoelho(tipo) {
  return tipo == "C";
}
bool ehRato(tipo) {
  return tipo == "R";
}