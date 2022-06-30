import '../../io_utils.dart';

void main(List<String> args) {
  var litros = getNumber("Quantidade de combustivel (litros) -> ");
  var tipo = input("Tipo de combustivel? (A)lcool ou (G)asolina -> ").toUpperCase();

  double valor = calcValorCombustivel(litros, tipo);

  print("Valor a pagar: $valor");
}

double calcValorCombustivel(num litros, String tipo) {
  var valor = 0.0;
  if (tipo == "G") {
    // Gasolina
    valor = calcValorGasolina(litros);
  } else {
    // alcool
    valor = calcValorAlcool(litros);
  }
  return valor;
}

double calcValorAlcool(num litros) {
  var valorPorLitro = 1.9;
  var valor = (litros * valorPorLitro);

  var percDesconto = 0.0;
  if (litros > 20)
    percDesconto = (5 / 100) * litros;
  else
    percDesconto = (3 / 100) * litros;

  var desconto = percDesconto * valor;

  return valor - desconto;
}

double calcValorGasolina(num litros) {
  var valorPorLitro = 2.5;
  var valor = (litros * valorPorLitro);

  var percDesconto = 0.0;
  if (litros > 20)
    percDesconto = (6 / 100) * litros;
  else
    percDesconto = (4 / 100) * litros;

  var desconto = percDesconto * valor;

  return valor - desconto;
}
