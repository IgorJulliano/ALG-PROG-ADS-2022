import '../bee_crowd/problems_dart/bee_1118.dart';
import '../io_utils.dart';

void main(List<String> args) {
  var dataInput = input("Insira uma data (DD/MM/AAAA) -> ").split("/");

  var dia = int.tryParse(dataInput[0]) ?? -1;
  var mes = int.tryParse(dataInput[1]) ?? -1;
  var ano = int.tryParse(dataInput[2]) ?? -1;
  var mesExtenso;


  if (validarData(dia, mes)) { // Validar os dados inseridos
    mesExtenso = mesPorExtenso(mes);
    print("$dia de $mesExtenso de $ano");
  } else {
    print("Insira uma data válida!");
  }
}

/// Recebe [day], [month] e, opicionalmente, [year].
/// Dia será validado, tendo de ser um numero entre 1 e 31;
/// mês será validado, tendo de ser um numero entre 1 e 12;
bool validarData(int day, int month) {
  return (1 <= day && day <= 31 &&
          1 <= month && month <= 12);
}

/// Recebe o [mes] como um numero entre 1 e 12.
/// Retorna o mes por extenso (tudo em minusculo).
String mesPorExtenso(int mes) {
  return Meses.values[mes - 1].name;
}

enum Meses {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}
