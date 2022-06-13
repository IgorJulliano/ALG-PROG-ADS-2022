
import '../io_utils.dart';

void main() {
  var nProva;
  var qtdNadadores;
  Prova prova;
  var counter = 1;

  while (true) {
    nProva = getNumber("Numero da prova -> ");
    qtdNadadores = getNumber("Numero de nadadores -> ");

    if (qtdNadadores == 0) break;

    prova = Prova(numero: nProva, qtdNadadores: qtdNadadores);

    // Lugar Pontos
    //    1 - 9
    //    2 - 6
    //    3 - 4
    //    4 - 3

    while (counter <= prova.qtdNadadores) {

      print("\n$counterº LUGAR"); // Ordem de classificação
      prova.nadadores.add(
        Nadador(
          name: input("Nome  -> "),
          classficacao: counter,
          tempo: getNumber("Tempo -> ").toDouble(),
          clube: input("Clube -> "),
        ));
      counter++;
    }
    
    counter = 1;
  }
}

class Nadador {
  Nadador({
    required this.name,
    required this.classficacao,
    required this.tempo,
    required this.clube,
  });
  final String name;
  final int classficacao;
  final double tempo;
  final String clube;
}
class Prova {
  Prova({
    required this.numero,
    required this.qtdNadadores,
  });

  final int numero;
  final int qtdNadadores;
  List<Nadador> nadadores = [];
}