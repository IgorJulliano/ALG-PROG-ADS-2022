
import 'dart:io';

void main() {

  var notas = (stdin.readLineSync()?? '').split(" ").map((e) => double.parse(e)).toList();

  double n1 = notas[0];
  double n2 = notas[1];
  double n3 = notas[2];
  double n4 = notas[3];

  double media = calcularMediaPond(n1, n2, n3, n4);

  print("Media: ${media.toStringAsFixed(1)}");

  if(media >= 7) print("Aluno aprovado.");
  else if(media < 5) print("Aluno reprovado.");
  else {

    print("Aluno em exame.");

    var notaExame = double.parse(stdin.readLineSync()?? '');
    
    print("Nota do exame: ${notaExame.toStringAsFixed(1)}");

    var mediaFinal = calcularMediaArit(notaExame, media);

    if(mediaFinal >= 5) print("Aluno aprovado.");
    else print("Aluno reprovado.");

    print("Media final: ${mediaFinal.toStringAsFixed(1)}");
    
  }

}

double calcularMediaPond(double n1, double n2, double n3, double n4) {

  int p1 = 2;
  int p2 = 3;
  int p3 = 4;
  int p4 = 1;

  return (n1*p1 + n2*p2 + n3*p3 +n4*p4) / (p1 + p2 + p3 + p4);

}

double calcularMediaArit(double n1, double n2) {
  return (n1 + n2) / 2;
}