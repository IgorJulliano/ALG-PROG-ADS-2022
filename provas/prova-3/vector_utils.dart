import 'dart:math';

import '../../io_utils.dart';

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

List<int> inicializarVetor() {
  int tamanho = getNumber("Insira o tamanho do vetor ('-1' para criação rapida) -> ").toInt();

  if (tamanho < 0) {
    return new List.generate(numeroAleatorio(5, 25), (index) => numeroAleatorio(1, 150));
  }

  int min = getNumber("Insira o valor mínimo -> ").toInt();
  int max = getNumber("Insira o valor máximo -> ").toInt();

  var auto = input("Preencher vetor altomaticamente? (S)im / (N)ão -> ").toUpperCase() == "S" ? true : false;

  List<int> vetor = List.generate(tamanho, (index) => 0);

  for (var i = 0; i < tamanho; i++) {
    vetor[i] = auto ? numeroAleatorio(min, max) : getNumber("Insira um valor -> ").toInt();
  }

  showVetor(vetor);

  return vetor;
}

int numeroAleatorio(int min, int max) => Random().nextInt(max - min) + min;

List<int> showVetor(List<int> vetor) {
  print(vetor);
  return vetor;
}

List<int> resetValues(List<int> vetor) {
  int value = getNumber("Insira o novo numero padrão -> ").toInt();
  for (var i = 0; i < vetor.length; i++) {
    vetor[i] = value;
  }
  return vetor;
}

List<int> showQuantity(List<int> vetor) {
  int qtd = vetor.length;
  print("Há ${qtd} itens no vetor.");
  return vetor;
}

List<int> minAndMax(List<int> vetor) {
  var min = menorElemento(vetor);
  var max = maiorElemento(vetor);

  print("Maior: ${max[1] + 1}º termo: ${max[0]}");
  print("Menor: ${min[1] + 1}º termo: ${min[0]}");

  return vetor;
}

List<int> menorElemento(List<int> vetor) {
  int menor = vetor[0];
  int pos = 0;
  for (var i = 0; i < vetor.length; i++) {
    if (vetor[i] < menor) {
      menor = vetor[i];
      pos = i;
    }
  }
  return [menor, pos];
}

List<int> maiorElemento(List<int> vetor) {
  int maior = vetor[0];
  int pos = 0;
  for (var i = 0; i < vetor.length; i++) {
    if (vetor[i] > maior) {
      maior = vetor[i];
      pos = i;
    }
  }
  return [maior, pos];
}

List<int> media(List<int> vetor) {
  int qtd = vetor.length;
  int soma = 0;

  for (var i = 0; i < qtd; i++) {
    soma += vetor[i];
  }

  var media = soma / qtd;

  print("Média dos valores do vetor: ${media.toStringAsFixed(2)}");

  return vetor;
}

List<int> sumAll(List<int> vetor) {
  int soma = 0;

  for (var i = 0; i < vetor.length; i++) {
    soma += vetor[i];
  }

  print("Soma de todos os elementos no vetor: $soma");

  return vetor;
}

List<int> positiveNumbers(List<int> vetor) {
  List<int> positivos = List.empty(growable: true);

  for (var i = 0; i < vetor.length; i++) {
    if (ehPositivo(vetor[i])) positivos.add(vetor[i]);
  }

  int qtd = positivos.length;

  if (qtd > 0) {
    print("Numeros positivos: ");
    showVetor(positivos);
    print("Contagem: $qtd");
  } else
    print(" ! Não há nenhum numero positivo no vetor ! ");

  return vetor;
}

List<int> negativeNumbers(List<int> vetor) {
  List<int> negativos = List.empty(growable: true);

  for (var i = 0; i < vetor.length; i++) {
    if (ehPositivo(vetor[i])) negativos.add(vetor[i]);
  }

  int qtd = negativos.length;

  if (qtd > 0) {
    print("Numeros negativos: ");
    showVetor(negativos);
    print("Contagem: $qtd");
  } else
    print(" ! Não há nenhum numero negativo no vetor ! ");

  return vetor;
}

List<int> mapVetor(List<int> vetor) {
  // TODO: Implmentar questão

  return vetor;
}

List<int> addValue(List<int> vetor, {int? value}) {
  var tamanhoAntigo = vetor.length;
  var novoVetor = List.generate(tamanhoAntigo + 1, (index) => 0);

  var valor = value ?? getNumber("Insira um numero -> ").toInt();

  var j = 0;
  for (var i = 0; i < novoVetor.length; i++) {
      novoVetor[i] = vetor[j];
      j++;
  }

  return novoVetor;
}

List<int> removeValue(List<int> vetor, {int? index}) {
  var tamanhoAntigo = vetor.length;
  var novoVetor = List.generate(tamanhoAntigo - 1, (index) => 0);

  var pos = index ?? getNumber("Posição do elemento a ser retirado (1, 2, 3, ... ) -> ");

  var j = 0;
  for (var i = 0; i < tamanhoAntigo; i++) {
    if(i == pos) continue;
    novoVetor[j] = vetor[i];
    j++;
  }

  return vetor;
}

List<int> removeValueAt(List<int> vetor) {
  return vetor;
}

List<int> editValueAt(List<int> vetor) {
  return vetor;
}

List<int> writeToFile(List<int> vetor) {
  return vetor;
}
