import '../../io_utils.dart';

void main(List<String> args) {

  int tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
  var vetorA = List.generate(tamanho, (index) => getNumber("Insira um numero -> "));
  
  var maior = vetorA[0];
  var menor = vetorA[0];
  var posMaior = 0;
  var posMenor = 0;

  for (var i = 0; i < tamanho; i++) {
    if(vetorA[i] > maior) {
      maior = vetorA[i];
      posMaior = i;
    }
    if(vetorA[i] < menor) {
      menor = vetorA[i]; 
      posMenor = i;
    }   
  }

  print("Maior: $maior (pos: $posMaior)");
  print("Menor: $menor (pos: $posMenor)");
  
}