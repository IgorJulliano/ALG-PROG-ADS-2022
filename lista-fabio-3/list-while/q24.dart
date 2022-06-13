import '../../io_utils.dart';

void main(List<String> args) {
  
  var qtdEntrevistados = getNumber("Quantos habitantes foram entrevistados -> ");
  var salario;
  var qtdFilhos;
  var perAbaixoSalMin;
  var qtdAbaixoSalMin = 0;
  num somaSalario = 0;
  num somaFilhos = 0;
  
  num mediaFilhos;
  num mediaSalario;

  var counter = 0;
  while (counter < qtdEntrevistados) {
    print("Pessoa $counter");
    salario = getNumber("Salário -> ");
    somaSalario += salario;
    if(salario < 1000) qtdAbaixoSalMin++;
    qtdFilhos = getNumber("Quantidade de filhos -> ");
    somaFilhos += qtdFilhos;
    
  }

  mediaFilhos = somaFilhos / qtdEntrevistados;
  mediaSalario = somaSalario / qtdEntrevistados;
  perAbaixoSalMin = qtdAbaixoSalMin / qtdEntrevistados;
  

  print("Media salarial: $mediaSalario");
  print("Percentual de pessoas com salário de até 1000: $perAbaixoSalMin");
  print("Media de filhos: $mediaFilhos");
}

