import '../../io_utils.dart';

void main(List<String> args) {
  
  var qtd = getNumberOnRange("Quantidade de bois -> ", 1, double.infinity);
  Boi? magro = null;
  Boi? gordo = null;
  var identificacao;
  var nome;
  var peso;

  var counter = 1;
  while (counter <= qtd) {
    print("\n$counterº boi");
    identificacao = input("Identificação -> ");
    nome = input("Nome -> ");
    peso = getNumber("peso -> ");
    var boi = Boi(identificacao, nome, peso);
    if(gordo == null || boi.peso > gordo.peso) gordo = boi;
    if(magro == null || boi.peso < magro.peso) magro = boi;
    counter++;
  }

  print("\nMais gordo:");
  print("> Identificação: ${gordo!.identificacao}");
  print("> Nome: ${gordo.nome}");
  print("> Peso: ${gordo.peso}");
  print("\nMais magro:");
  print("> Identificação: ${magro!.identificacao}");
  print("> Nome: ${magro.nome}");
  print("> Peso: ${magro.peso}");

  
}


class Boi {
  Boi(this.identificacao, this.nome, this.peso);

  String identificacao;
  String nome;
  num peso;
}