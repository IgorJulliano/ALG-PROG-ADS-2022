import '../../io_utils.dart';

void main() {
    var tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
    var vetorA = List.generate(tamanho, (index) => getNumber("Insira um valor (A) -> ").toInt());
    var vetorB = List.generate(tamanho, (index) => getNumber("Insira um valor (B) -> ").toInt());
    var vetorC = List.filled(2 * tamanho, 0);

    var j = 0;
    for (var i = 0; i < 2 * tamanho; i++) {
      if(i < tamanho){
          vetorC[i] = vetorA[i];
      } else{
          vetorC[i] = vetorB[j];
          j++;
      }
    }

    print("Vetor A $vetorA");
    print("Vetor B $vetorB");
    print("Vetor C $vetorC");
    
}
