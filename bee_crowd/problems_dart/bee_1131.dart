import 'dart:io';

void main(List<String> args) {
  int qtdJogos = 0;
  int empates = 0;
  int vitGremio = 0;
  int vitInter = 0;

  Iterable<int> rstJogo;
  int golsInter;
  int golsGremio;

  String vencedor;

  int op = 1;

  while (op == 1) {
    
    rstJogo = (stdin.readLineSync() ?? "").split(" ").map(int.parse);

    golsInter = rstJogo.elementAt(0);
    golsGremio = rstJogo.elementAt(1);

    if (ehEmpate(golsInter, golsGremio)) empates++;
    else if (verVencedor(golsInter, golsGremio) == "Inter") vitInter++;
    else if (verVencedor(golsInter, golsGremio) == "Gremio") vitGremio++;

    qtdJogos++;

    print("Novo grenal (1-sim 2-nao)");
    op = int.parse(stdin.readLineSync() ?? "");
  }


  print("$qtdJogos grenais");
  print("Inter:$vitInter");
  print("Gremio:$vitGremio");
  print("Empates:$empates");
  
  if(ehEmpate(vitInter, vitGremio)){
    print("Nao houve vencedor");
  } else {
    vencedor = verVencedor(vitInter, vitGremio);
    print("$verVencedor venceu mais");
  }
}

bool ehEmpate(int vitorias_inter, int vitorias_gremio) {
  return vitorias_inter == vitorias_gremio;
}

String verVencedor(int vitorias_inter, int vitorias_gremio) {
  return vitorias_inter > vitorias_gremio ? "Inter" : "Gremio";
}
