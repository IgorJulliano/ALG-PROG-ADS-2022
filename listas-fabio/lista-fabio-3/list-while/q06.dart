void main(List<String> args) {
  
  print("Tabuada!");

  int multiplicando = 1;
  int multiplicador = 1;
  int produto;
  while (multiplicando <= 10) {
    print("\nTabuada do $multiplicando");
    while (multiplicador <= 10) {
      produto = multiplicando * multiplicador;
      print("$multiplicando * $multiplicador = $produto");
      multiplicador++;
    }
    multiplicador = 1;
    multiplicando++;
  }
  
}