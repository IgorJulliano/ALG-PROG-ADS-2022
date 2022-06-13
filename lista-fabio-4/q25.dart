import '../io_utils.dart';

void main(List<String> args) {
  
  int qtdPessoas;

  int qtdCanal2 = 0;
  int qtdCanal4 = 0;
  int qtdCanal5 = 0;
  int qtdCanal7 = 0;
  int qtdCanal10 = 0;

  int somaPessoas = 0;

  var canalLido = getNumber("Insira o canal (2, 4, 5, 7 ou 10) -> ");
  
  while(canalLido != 0){
    qtdPessoas = getNumber("Insira quantas pessoas assistiam ao canal -> ").toInt();
    somaPessoas += qtdPessoas;
    
    if(canalLido == 2) qtdCanal2 += qtdPessoas;
    if(canalLido == 4) qtdCanal4 += qtdPessoas;
    if(canalLido == 5) qtdCanal5 += qtdPessoas;
    if(canalLido == 7) qtdCanal7 += qtdPessoas;
    if(canalLido == 10) qtdCanal10 += qtdPessoas;
    canalLido = getNumber("Insira o canal (2, 4, 5, 7 ou 10) -> ");
    
  }

  double percCanal2 = (qtdCanal2 / somaPessoas) * 100;
  double percCanal4 = (qtdCanal4 / somaPessoas) * 100;
  double percCanal5 = (qtdCanal5 / somaPessoas) * 100;
  double percCanal7 = (qtdCanal7 / somaPessoas) * 100;
  double percCanal10 = (qtdCanal10 / somaPessoas) * 100;

  print("Canal 2: $qtdCanal2 telespectadores ($percCanal2%)");
  print("Canal 4: $qtdCanal4 telespectadores ($percCanal4%)");
  print("Canal 5: $qtdCanal5 telespectadores ($percCanal5%)");
  print("Canal 7: $qtdCanal7 telespectadores ($percCanal7%)");
  print("Canal 10: $qtdCanal10 telespectadores ($percCanal10%)");
}