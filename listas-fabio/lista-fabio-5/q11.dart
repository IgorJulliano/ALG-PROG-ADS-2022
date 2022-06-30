import '../../io_utils.dart';

void main(List<String> args) {
  var ordem = getNumber("Insira a ordem da matriz quadrada -> ").toInt();
  var matriz = createMatrix(ordem, ordem);
  var matrizTransposta = createMatrix(ordem, ordem);

  for (var i = 0; i < ordem; i++) {
    for (var j = 0; j < ordem; j++) {
      matriz[i][j] = getNumber("Insira um numero ($i,$j) -> ").toInt();
    }
  }

  for (var i = 0; i < ordem; i++) {
    for (var j = 0; j < ordem; j++) {
      matrizTransposta[j][i] = matriz[i][j];
    }
  }

  matrizTransposta.forEach((element) {
    print(element);
  });
}
