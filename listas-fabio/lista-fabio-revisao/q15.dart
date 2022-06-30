import '../io_utils.dart';

void main(List<String> args) {
  
  num kgMorango = getNumber("Insira qtd de morango: ");
  num kgMaca = getNumber("Insira qtd de maçã: ");

  var pesoTotal = kgMorango + kgMaca;

  var valorMorango = calcValorMorango(kgMorango);
  var valorMaca = calcValorMaca(kgMaca);
  var valorAPagar = valorMorango + valorMaca;
  var desconto = calcDesconto(pesoTotal, valorAPagar);
  valorAPagar -= desconto;


  print("Valor a pagar: $valorAPagar");
}

num calcDesconto(num kgTotal, num valorTotal){
  var percDesconto = 10 / 100;
  var desconto = 0.0;

  if(kgTotal > 8 || valorTotal > 25){
    desconto = valorTotal * percDesconto;
  }
  
  return desconto;
}

num calcValorMaca(num kg) {
  var valorVarejo = 1.8 * kg; // até 5Kg
  var valorAtacado = 1.5 * kg; // acima de 5Kg

  return (kg > 5) ? valorAtacado : valorVarejo;
}

num calcValorMorango(num kg) {
  var valorVarejo = 2.5 * kg; // até 5Kg
  var valorAtacado = 2.2 * kg; // acima de 5Kg

  return (kg > 5) ? valorAtacado : valorVarejo;
}