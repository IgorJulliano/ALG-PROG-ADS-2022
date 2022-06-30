import 'dart:math' as math;
import '../../io_utils.dart';

const IMC_MIN = 18.5;
const IMC_MAX = 25;

void main() {
  num peso = getNumber("Insira seu peso -> ");
  num altura = getNumber("Insira sua altura -> ");
  num imc = calcIMC(peso, altura);

  num pesoIdeal;
  num difpeso;
  num calorias;

  int semanas;
  num calorDia;

  if (ehPesoIdeal(imc))
    print("Seu peso ta ótimo, deixa de coisa e vai trabalhar - $imc");
  else {
    if (ehAcimaDoPeso(imc)) {
      pesoIdeal = calcPesoAlvo(altura, 24);
      difpeso = peso - pesoIdeal;
      calorias = peso * 1000;

      print("VOCÊ ESTÁ ACIMA DO PESO!\nESTE O PESO QUE VOCE DEVE PERDER: ${difpeso.toStringAsFixed(2)}");
      input("");
      calorDia = getNumber("Quantas calorias você consume por dia -> ");
      semanas = getNumber("Em quantas semanas pretende perder a diferença de peso -> ").toInt();
      var bla = calcCalorias(difpeso, semanas);
      print("Semanas: $semanas");
      print("Calorias por dia: $calorDia");
      print("bla: $bla");



      //
    } else if (ehAbaixoDoPeso(imc)) {
      pesoIdeal = calcPesoAlvo(altura, 24);
      difpeso = pesoIdeal - peso;
    }
  }
}

num calcIMC(num peso, num altura) {
  return peso / (altura * altura);
}

num calcPesoAlvo(num altura, num imcAlvo) {
  return imcAlvo * (altura * altura);
}

bool ehAcimaDoPeso(num imc) => imc > IMC_MAX;
bool ehAbaixoDoPeso(num imc) => imc < IMC_MIN;
bool ehPesoIdeal(num imc) => IMC_MIN <= imc && imc <= IMC_MAX;

Map<String, double> calcCalorias(num peso, num semanas) {
  double pesoPorSemana = (peso / semanas);
  double pesoPorDia = (pesoPorSemana * (5 / 5.5))/5;
  double pesoPorSabado = pesoPorSemana * (0.5 / 5.5);
  return {'diaDeSemana' : pesoPorDia, 'finalDeSemana' : pesoPorSabado};
}
