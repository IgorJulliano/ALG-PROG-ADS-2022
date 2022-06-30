
import '../../io_utils.dart';

void main() {
  var nProva;
  var qtdNadadores;
  var counter = 1;

  num pontosClubeA = 0;
  num pontosClubeB = 0;

  var name;
  var classificacao;
  var tempo;
  var clube;

  while (nProva != 0 || qtdNadadores != 0) {
    nProva = getNumber("Numero da prova -> ");
    qtdNadadores = getNumber("Numero de nadadores -> ");

    while (counter <= qtdNadadores) {

      print("\n$counterº LUGAR"); // Ordem de classificação
      name = input("Nome  -> ");
      classificacao = counter;
      tempo = getNumber("Tempo -> ");
      clube = input("Clube -> ").toUpperCase();
      counter++;

      if(clube == "A") pontosClubeA += calcPontos(classificacao);
      else pontosClubeB += calcPontos(classificacao);
    }
    counter = 1;
  }
  var ganhador = pontosClubeA == pontosClubeB ? "Ninguém" : pontosClubeA > pontosClubeB ? "Clube A" : "Clube B";
  print("\n$ganhador venceu");
}

num calcPontos(classificacao) {
  if(classificacao == 1) return 9;
  if(classificacao == 2) return 6;
  if(classificacao == 3) return 4;
  if(classificacao == 4) return 3;
  return 0;
}