import '../../io_utils.dart';

void main() {
    var tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
    var vetorA = List.generate(tamanho, (index) => getNumber("Insira um valor (A) -> ").toInt());
    var vetorB = List.generate(tamanho, (index) => getNumber("Insira um valor (B) -> ").toInt());

    List<int> vetorUniao = [];
    List<int> vetorIntersecao = [];

    vetorUniao.addAll(vetorA);
    for (var i = 0; i < tamanho; i++) {
        
        if(!vetorUniao.contains(vetorB[i])) vetorUniao.add(vetorB[i]); // união

        if(vetorB.contains(vetorA[i])) vetorIntersecao.add(vetorA[i]); // interseção
        
    }
    
    print("Vetor A $vetorA");
    print("Vetor A $vetorB");
    print("Vetor União $vetorUniao");
    print("Vetor Interseção $vetorIntersecao");
}
