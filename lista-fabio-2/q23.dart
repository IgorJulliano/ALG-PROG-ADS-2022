// Leia 2 datas, cada uma composta por 3 variaveis inteiras (dia, mes e ano)
// e escreva qual delas é mais recente

import '../io_utils.dart';

void main() {
  var dataHoje = input("Escreva a data de hoje (dd/mm/aaaa): ").split("/");
  var diaHoje = int.parse(dataHoje[0]);
  var mesHoje = int.parse(dataHoje[1]);
  var anoHoje = int.parse(dataHoje[2]);
  var data1 = input("Escreva a primeira data (dd/mm/aaaa): ").split("/");
  var dia1 = int.parse(data1[0]);
  var mes1 = int.parse(data1[1]);
  var ano1 = int.parse(data1[2]);
  var data2 = input("Escreva a segunda data (dd/mm/aaaa): ").split("/");
  var dia2 = int.parse(data2[0]);
  var mes2 = int.parse(data2[1]);
  var ano2 = int.parse(data2[2]);

  var dif1 = diferencaDatas(diaHoje, mesHoje, anoHoje, dia1, mes1, ano1);
  var dif2 = diferencaDatas(diaHoje, mesHoje, anoHoje, dia2, mes2, ano2);
  print("A data mais recente é:");
  if(dif1<dif2) print("$data1");
  else print("$data2");
  
}


int diferencaDatas(int dia1, int mes1, int ano1, int dia2, int mes2, int ano2){

  const ANO_INICIO = 1900;
  const DIAS_MES = 30;
  const DIAS_ANO = 365;

  var dias1 = dia1 + (mes1 * DIAS_MES) + (ano1 * DIAS_ANO - ANO_INICIO * DIAS_ANO);
  var dias2 = dia2 + (mes2 * DIAS_MES) + (ano2 * DIAS_ANO - ANO_INICIO * DIAS_ANO);

  return dias1 - dias2;

}