import '../../io_utils.dart';

void main(List<String> args) {
  
  print("Tipos de carne");
  print("1 - Filé");
  print("2 - Alcatra");
  print("3 - Picanha");
  int op = getNumberOnRange("Qual tipo de carne deseja comprar -> ", 1, 3).toInt();
  var tipoCarne = TipoCarne.values[op-1];
  
  var qtdCarne = getNumber("Quantos quilos comprará -> ");

  var valorAPagar = calcValor(tipoCarne, qtdCarne);

  clear();

  print("Tipo de Pagamento");
  print("1 - Cartão Tabajara");
  print("2 - outro");
  op = getNumberOnRange("Qual o tipo de pagamento -> ", 1, 3).toInt();
  
  var tipoPagamento = TipoPagamento.values[op-1];

  double desconto = calcDesconto(tipoPagamento, valorAPagar);

  valorAPagar -= desconto;

  print("  NOTA FISCAL  ");
  print("");
  print("TIPO DE CARNE: ${tipoCarne.name}");
  print("QUANTIDADE: $qtdCarne");
  print("TIPO DE PAGAMENTO: ${tipoPagamento.name}");
  print("VALOR DO DESCONTO: ${desconto.toStringAsFixed(2)}");
  print("VALOR TOTALA PAGAR: ${valorAPagar}");
  print("");
  input("");
  
}

calcValor(TipoCarne tipoCarne, num qtdCarne) {
  var valor;
  
  if(tipoCarne == TipoCarne.file){
    valor = calcValorFile(qtdCarne);
  }
  else if(tipoCarne == TipoCarne.alcatra){
    valor = calcValorAlcatra(qtdCarne);
  }
  else if(tipoCarne == TipoCarne.picanha){
    valor = calcValorPicanha(qtdCarne);
  }

  return valor;
}

double calcDesconto(TipoPagamento tipoPag, num valorTotal) {
  var percDesconto = 5/100;
  var desconto = 0.0;
  
  if(tipoPag == TipoPagamento.cartaoTabajara){
    desconto = percDesconto * valorTotal;
  }

  return desconto;
}
num calcValorFile(num qtd) {
  var valorAte5kg = 4.9;
  var valorAcima5kg = 5.8;
  num valor = 0.0;

  if(qtd > 5) valor = qtd * valorAcima5kg;
  else valor = qtd * valorAte5kg;

  return valor;
}
num calcValorAlcatra(num qtd) {
  var valorAte5kg = 5.9;
  var valorAcima5kg = 6.8;
  num valor = 0.0;

  if(qtd > 5) valor = qtd * valorAcima5kg;
  else valor = qtd * valorAte5kg;

  return valor;
}
num calcValorPicanha(num qtd) {
  var valorAte5kg = 6.9;
  var valorAcima5kg = 7.8;
  num valor = 0.0;

  if(qtd > 5) valor = qtd * valorAcima5kg;
  else valor = qtd * valorAte5kg;

  return valor;
}



enum TipoPagamento{
  cartaoTabajara,
  outro
}

enum TipoCarne{
  file,
  alcatra,
  picanha
}