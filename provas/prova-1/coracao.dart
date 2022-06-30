import '../../io_utils.dart';

void main() {
  var idade = getNumber("Insira sua idade: ");
  var freqAtual = getNumber("Insira sua atual frequência cardiaca: ");

  var faixa = new FaixaCardiaca(idade, freqAtual);

  print("Tabela: ${faixa.tabelaZonas}");
  print("Situação atual: ${faixa.zonaAtual}");
}

class FaixaCardiaca{

  var idade;
  var freqMax;
  var freqAtual;
  var zonaAtual;
  var tabelaZonas;

  FaixaCardiaca(num idade, num frequenciaAtual){
    this.idade = idade;
    this.freqMax = 220 - idade;
    this.freqAtual = frequenciaAtual;
    this.zonaAtual = _getZonaAtual();
    this.tabelaZonas = _getFaixaCardiaca();
  }

  String _getFaixaCardiaca(){
    var table = "Atividade moderada  [${freqMax*0.5}-${freqMax*0.6})\n";
    table += "Controle de peso       [${freqMax*0.6}-${freqMax*0.7})\n";
    table += "Aeróbica               [${freqMax*0.7}-${freqMax*0.8})\n";
    table += "Anaeróbica             [${freqMax*0.8}-${freqMax*0.9})\n";
    table += "Esforço Máximo         [${freqMax*0.9}-${freqMax*1.0})";
    return table;
  }
  
  String _getZonaAtual(){
    if(freqAtual >= (freqMax * 0.5) 
    && freqAtual  < (freqMax * 0.6))     return "Atvidade moderada";
    else if(freqAtual < (freqMax * 0.7)) return "Controle de peso";
    else if(freqAtual < (freqMax * 0.8)) return "Aeróbica";
    else if(freqAtual < (freqMax * 0.9)) return "Anaeróbica";
    else if(freqAtual <= (freqMax * 1.0)) return "Esforço Máximo";
    return "Fora de qualquer zona";
  }

}