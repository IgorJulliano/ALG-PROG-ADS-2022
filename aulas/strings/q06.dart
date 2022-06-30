import 'dart:ffi';
import 'dart:js';

import '../io_utils.dart';
import 'dart:math' as math;

void main(List<String> args) {
  var numero = getNumber("um numero de três digitos -> ").toInt();

  var numeroExtenso = numeroPorExtenso(numero);

  print("Numero: $numeroExtenso");

}


String numeroPorExtenso(int num){

  var unidadeNum = (num % 10).truncate();
  var dezenaNum = ((num % 100) / 10).truncate();
  var centenaNum = (num / 100).truncate();

  var uniExtenso = unidadePorExtenso(unidadeNum);
  var dezExtenso = dezenaPorExtenso(dezenaNum);
  var cenExtenso = centenaPorExtenso(centenaNum);
  
  String numPorExtenso = '';
  numPorExtenso += cenExtenso;
  numPorExtenso += dezExtenso.isEmpty ? "" : " e $dezExtenso";
  numPorExtenso += uniExtenso.isEmpty ? "" : " e $uniExtenso";

  return numPorExtenso;  
}

String unidadePorExtenso(int unidade) {
  return unidade == 0 ? "" : Unidades.values[unidade].name;
}
String dezenaPorExtenso(int dezena) {
  return dezena == 0 ? "" : Dezenas.values[dezena - 1].name;
}
String centenaPorExtenso(int centena) {
  return centena == 0 ? "" : Centenas.values[centena - 1].name;
}

enum Unidades { zero, um, dois, tres, quatro, cinco, seis, sete, oito, nove }
enum Dezenas { dez, vinte, trinta, quarenta, cinquenta, sessenta, setenta, oitenta, noventa }
enum Centenas { cento, duzentos, trezentos, quatrocentos, quinhentos, seiscentos, setecentos, oitocentos, novecentos }






void foo(){
  var texto = "textin 0 1";
  var novaFrase = '';
  for (var i = 0; i < texto.length; i++) {

    int? algarismo = int.tryParse(texto[i]);
    
    if(algarismo == null) {
      novaFrase+= texto[i];
    } else {
      novaFrase += nomeAlgarismo(algarismo);
    }

  }
}

String nomeAlgarismo(int num){
  var nomes = ['zero', 'um', 'dois', 'tres', 'quatro', 'cinco', 'seis', 'sete', 'oito', 'nove'];
  return nomes[num];
}


bool ehNumero(String caractere){
  var nomes = ['0','1','2','3','4','5','6','7','8','9'];
  var numeros = Array(nomes.length);
  return nomes.contains(caractere);
}