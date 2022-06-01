import '../io_utils.dart';

void main() {
  var nota1 = getNumber("Nota 1 -> ");
  var nota2 = getNumber("Nota 2 -> ");

  double media = (nota1 + nota2) / 2;
  String conceito = notaConceito(media);

  print("Media: $media");
  print("Nota conceito: $conceito");
  if (aprovado(conceito))
    print("Aprovado"); // A, B ou C
  else
    print("Reprovado");
}

bool aprovado(String conceito) {
  return conceito == "A" || conceito == "B" || conceito == "C";
}

String notaConceito(double media) {
  if (media <= 4.0)
    return "E";
  else if (media <= 6.0)
    return "D";
  else if (media <= 7.5)
    return "C";
  else if (media <= 9.0)
    return "B";
  else if (media <= 10) return "A";
  return "X";
}
