import '../../io_utils.dart';
import './vector_utils.dart';

void main(List<String> args) {
  var entrada;

  List<int>? vetor = inicializarVetor();

  while (true) {
    if (vetor == null) break;
    vetor = homeMenuPage(vetor);
  }
}

List<int>? homeMenuPage(List<int> vetor) {
  print("### IGLUS & KERSU's NUMBER PLAY ###");

  List<int>? novoVetor = List.from(vetor);

  mostrarOpcoesMenu();
  novoVetor = execMenuOption(novoVetor);

  input("");
  return novoVetor;
}

void mostrarOpcoesMenu() {
  var options = [
    "Mostrar todos os valores do vetor",
    "Resetar valores do vetor",
    "Quantidade de itens no vetor",
    "Menor e maior valor no vetor",
    "Mostrar média dos valores do vetor",
    "Somatório dos valores do vetor",
    "Valores positivos",
    "Valores negativos",
    "Atualizar todos os valores por uma regra",
    "Adicionar novos valores",
    "Remover item tal",
    "Remover item na posição",
    "Editar valor na posição",
    "Salvar valores em arquivo",
    "Sair"
  ];

  clear();

  for (var i = 0; i < options.length; i++) {
    print(i.toString() + (i < 10 ? "  - " : " - ") + options[i]);
  }
}

List<int>? execMenuOption(vetor) {
  var optFunctions = [
    showVetor,
    resetValues,
    showQuantity,
    minAndMax,
    media,
    sumAll,
    positiveNumbers,
    negativeNumbers,
    mapVetor,
    addValue,
    removeValue,
    removeValueAt,
    editValueAt,
    writeToFile,
  ];

  var entrada = getNumber("Selecione uma opção -> ").toInt();
  print("");
  if (entrada == optFunctions.length) return null;
  return optFunctions[entrada](vetor);
}
