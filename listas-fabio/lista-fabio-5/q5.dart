import '../../io_utils.dart';

void main() {
    var tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
    var vetorA = List.generate(tamanho,
        (index) => getNumber("Insira um valor (A) -> ").toInt(),
    );
    var soma = 0;

    for (var i = 0; i < tamanho ~/ 2; i++) {
        soma += (vetorA[i] + vetorA[tamanho - i - 1]) ^ 2;
    }
    
    print("Soma = $soma");
}
