import '../io_utils.dart';

void main(List<String> args) {
  int qtdPessoas = 0;
  int somaIdades = 0;

  int somaIdadeOtimo = 0;
  int somaIdadeBom = 0;
  int somaIdadeRegular = 0;
  int somaIdadePessimo = 0;

  int qtdOtimo = 0;
  int qtdBom = 0;
  int qtdRegular = 0;
  int qtdPessimo = 0;

  num opiniao;



  var idadeEspectador = getNumber("Insira a idade -> ").toInt();

  while (idadeEspectador > 0) {

    somaIdades += idadeEspectador;

    printMenu();
    opiniao = getNumberOnRange("Dite a nota do filme: -> ", 1, 4);

    if (opiniao == 1){
      qtdOtimo++;
      somaIdadeOtimo = somaIdadeOtimo + idadeEspectador;
      };
    if (opiniao == 2){
      qtdBom++;
      somaIdadeBom = somaIdadeBom + idadeEspectador;
      };
    if (opiniao == 3){
      qtdRegular++;
      somaIdadeRegular = somaIdadeRegular + idadeEspectador;
      };
    if (opiniao == 4){
      qtdPessimo++;
      somaIdadePessimo = somaIdadePessimo + idadeEspectador;
      };

    idadeEspectador = getNumber("Insira a idade -> ").toInt();
    qtdPessoas++;
  }

  var mediaIdade = somaIdades / qtdPessoas; 
  
  var mediaIdadeOtimo    = somaIdadeOtimo / qtdOtimo;
  var mediaIdadeBom      = somaIdadeBom / qtdBom;
  var mediaIdadeRegular  = somaIdadeRegular / qtdRegular;
  var mediaIdadePessimo  = somaIdadePessimo / qtdPessimo;

  print("\nTotal de pessoas que responderam: $qtdPessoas");
  print("Media idade geral: $mediaIdade");
  print("Responderam como 'Ótimo':    $qtdOtimo \t| Média de idade: $mediaIdadeOtimo");
  print("Responderam como 'Bom':      $qtdBom \t| Média de idade: $mediaIdadeBom");
  print("Responderam como 'Regular':  $qtdRegular \t| Média de idade: $mediaIdadeRegular");
  print("Responderam como 'Pessimo':  $qtdPessimo \t| Média de idade: $mediaIdadePessimo");

  // a média das idades das pessoas que responderam ótimo;
  // a quantidade de pessoas que respondeu regular;
  // o percentual de pessoas que respondeu bom entre os entrevistados.
  
}

void printMenu() {
  var menu = "Dite a nota do filme";
  menu += "1 - Ótimo";
  menu += "2 - Bom";
  menu += "3 - Regular";
  menu += "4 - Péssimo";
  print(menu);
}
