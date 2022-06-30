// Leia duas notas de um aluno e escreva na tela a palavra aprovado se a media
// de duas notas for maior ou igual a 7. Caso a média sea inferior a 7,
// o programa deve ler a nota do exame e calcule a média final. Se esta for
// maior do ou igual a 5, o programa deve escrever "Aprovado", caso contrário
// deve escrever "Repreovado".


import '../../io_utils.dart';

void main(List<String> args) {
  const MEDIA_GERAL = 7.0;
  const MEDIA_REC = 5.0;

  var entrada = input("Insira as duas notas (Ex.: '5.75 8.0):" ).split(" ").map((e) => double.parse(e)).toList();

  double nota1 = entrada[0];
  double nota2 = entrada[1];

  double media = calcularMedia(nota1, nota2);

  if(foiAprovado(media, MEDIA_GERAL)) print("APROVADO!");
  else{
    double notarec = double.parse(input("Não aprovado! Insira a nota do exame de recuperação: "));
    double mediaRec = calcularMedia(media, notarec);
    if(foiAprovado(mediaRec, MEDIA_REC)) print("APROVADO!");
    else print("REPROVADO!");
  }
}


double calcularMedia(nota1, nota2){
  return (nota1 + nota2) / 2;
}

bool foiAprovado(double nota, double media){
  return nota >= media;
}