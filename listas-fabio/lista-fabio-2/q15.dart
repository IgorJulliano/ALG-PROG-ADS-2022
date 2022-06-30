// Leia a quantidade de horas aula dadas por dois professores e o valor po hora
// recebeido por cada um. Escreva na tela qual dos professores tem salario total maior.

import '../../io_utils.dart';

void main(List<String> args) {
  var nomeProf1 = input("Insira seu nome, professor: ");
  var horaProf1 = double.parse(input("Quantas horas aula você realiza no mês: "));
  var valorProf1 = double.parse(input("Quanto você ganha por cada hora aula: R\$"));

  var nomeProf2 = input("Insira seu nome, professor: ");
  var horaProf2 = double.parse(input("Quantas horas aula você realiza no mês: "));
  var valorProf2 = double.parse(input("Quanto você ganha por cada hora aula: R\$"));

  var salProf1 = calcularSalario(horaProf1, valorProf1);
  var salProf2 = calcularSalario(horaProf2, valorProf2);

  if(salProf1 > salProf2) print("$nomeProf1 recebe maior salário ($salProf1)");
  else print("$nomeProf2 recebe maior salário ($salProf2)");

}

double calcularSalario(double horas, double valor) {
  return horas * valor;
}