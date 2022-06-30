import '../../io_utils.dart';



/// INCOMPLETA
void main(List<String> args) {
  var horasTrab = getNumber("Insira quantas horas você trabalha -> ");
  var numeroDepedentes = getNumber("Insira o numero de dependentes -> ");
  var salarioBruto = calcSalario(horasTrab);

  num impostos = calcImpostos(salarioBruto);
  num bonus = calcBonusDepends(numeroDepedentes);
  num salarioLiquido = salarioBruto - impostos + bonus;


  print("Salário bruto: $salarioBruto");
  print("Impostos: $impostos");
  print("Bonus: $bonus");
  print("Salário liquido: $salarioLiquido");
}

num calcImpostos(num salario) {
  var descontos = calcINSS(salario);
  descontos += calcIR(salario);
  return descontos;
}
num calcIR(num salario) {
  const percentINSS = 5.0/100;
  return salario * percentINSS;
}
num calcINSS(num salario) {
  const percentINSS = 8.5/100;
  return salario * percentINSS;
}

num calcSalario(num horasTrab){
  const valorPorHora = 12.00;
  return horasTrab * valorPorHora;  
}

num calcBonusDepends(numeroDepedentes) {
  const valorPorDependentes = 40.00;
  return numeroDepedentes * valorPorDependentes;
}

class Ficha {
  var codigo;
  var horasTrab;
  var nDependentes;

  Ficha(this.codigo, this.horasTrab, this.nDependentes);
}