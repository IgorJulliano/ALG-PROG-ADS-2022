import 'dart:io';
import 'dart:math';

String input(String? output) {
  stdout.write(output);
  return stdin.readLineSync() ?? "";
}

void clear() {
  Process.start('clear', [], runInShell: true).then((process) {
    stdout.addStream(process.stdout);
    stderr.addStream(process.stderr);
  });
}

String loadFile(String s) {
  return new File(s).readAsStringSync();
}

num inputNumber(String? output) {
  var inp = input(output);

  var number = int.tryParse(inp) ?? double.tryParse(inp);

  while (number == null) {
    print("Insira um número!");
    number = inputNumber(output);
  }
  return number;
}

num getNumber(String? output) {
  var inp = input(output);
  var number = num.tryParse(inp);

  while (number == null) {
    print("Insira um numero");
    inp = input(output);
    number = num.tryParse(inp);
  }
  return number;
}

num getNumberOnRange(String? output, num min, num max) {
  var number = getNumber(output);

  while (!(min <= number && number <= max)) {
    print("Insira um numero contido no intervalo [$min-$max]");
    number = getNumber(output);
  }
  return number;
}

bool ehPositivo(n) => n >= 0;
bool ehNegativo(n) => !ehPositivo(n);
bool ehPar(num n) => n % 2 == 0;
bool ehImpar(num n) => !ehPar(n);
bool ehInteiro(num n) => n % 1 == 0;
bool ehDecimal(num n) => !ehInteiro(n);
bool ehMaior(num n1, num n2) => n1 > n2;
bool ehMenor(num n1, num n2) => n1 < n2;
num max(num n1, num n2) => n1 > n2 ? n1 : n2;
num min(num n1, num n2) => n1 < n2 ? n1 : n2;

bool ehPrimoFOR(num n) {
  if (ehNegativo(n)) return false;
  for (var i = 2; i < sqrt(n); i++) {
    if (n % i == 0) return false;
  }
  return true;
}

bool ehPrimoWHILE(num n) {
  if (ehNegativo(n)) return false;
  var i = 2;
  while (i < sqrt(n)) {
    if (n % i == 0) return false;
    i++;
  }
  return true;
}

num fatorial(num n) {
  if (n < 2) return 1;
  return n * fatorial(n - 1);
}

num arranjo(num n, num p) {
  return fatorial(n) / fatorial(p);
}

num combinatoria(num n, num p) {
  return fatorial(n) / (fatorial(p) * fatorial(n - p));
}

num mediaAritmetica(List<num> nums) {
  num soma = 0;
  for (var i = 0; i < nums.length; i++) {
    soma += nums[i];
  }
  return soma / nums.length;
}

/// Recebe uma lista de numeros '[nums]' e uma lista com seus respectios '[pesos]'.
num mediaPomderada(List<num> nums, List<num> pesos) {
  num soma = 0;
  for (var i = 0; i < nums.length; i++) {
    soma += nums[i] * pesos[i];
  }
  return soma / nums.length;
}

bool saoDivisores(num num1, num num2) {
  var maior = max(num1, num2);
  var menor = min(num1, num2);
  return maior % menor == 0;
}

// MAXIMO DIVISOR COMUM
num calcularMDC(num num1, num num2) {
  num mdc = max(num1, num2);

  while (!(saoDivisores(num1, mdc) && saoDivisores(num2, mdc))) {
    mdc--;
  }
  return mdc;
}

// MINIMO MULTIPLO COMUM
num calcularMMC(num num1, num num2) {
  num menor = min(num1, num2);
  num mmc = menor;

  while (!saoDivisores(num1, mmc) || !saoDivisores(num2, mmc)) {
    mmc += menor;
  }

  return mmc;
}

bool ehVogal(String letter) {
  var upLetter = letter.toLowerCase();
  return upLetter == "a" || upLetter == "e" || upLetter == "i" || upLetter == "o" || upLetter == "u";
}

bool ehConsoante(String letter) => !ehVogal(letter);

/// Retorna uma lista com [n] termos da sequencia de Fibonacci
List<int> fibonacciNumbers(int n) {
  var fibNumbers = List.filled(n, 0);
  var tamanho = fibNumbers.length;

  for (var i = 0; i < tamanho; i++) {
    if (i < 2)
      fibNumbers[i] = i;
    else
      fibNumbers[i] = fibNumbers[i - 2] + fibNumbers[i - 1];
  }

  return fibNumbers;
}

/// Retorna o N-ésimo termo da sequencia de Fibonacci
int fibonacciNumber(int n) {
  if (n < 0) return 0;
  if (n < 2) return n;
  return fibonacciNumber(n - 1) + fibonacciNumber(n - 2);
}

List<num> bubbleSort(List<num> vetor, {ascendente = true}) {
  var auxiliar;
  var trocou = true;
  var ultimoTermo = vetor.length - 1;
  var funcao = ascendente ? ehMaior : ehMenor;

  var j = 0;
  while (trocou) {
    trocou = false;
    for (var i = 0; i < ultimoTermo - j; i++) {
      if (funcao(vetor[i], vetor[i + 1])) {
        trocou = true;
        auxiliar = vetor[i];
        vetor[i] = vetor[i + 1];
        vetor[i + 1] = auxiliar;
      }
    }
    j++;
  }

  return vetor;
}

List<List> createMatrix(int linhas, int colunas, {Object? value = null}) {
  return new List<List>.generate(
    linhas,
    (index) => List.generate(
      colunas,
      (index) => value,
    ),
  );
}
