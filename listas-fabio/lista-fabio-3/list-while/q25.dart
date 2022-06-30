
import '../../../io_utils.dart';

void main(List<String> args) {

  var numEleitores = getNumber("Numero de eleitores -> ");

  var qtdVotosCand1 = 0;
  var qtdVotosCand2 = 0;
  var qtdVotosCand3 = 0;
  var qtdVotosNulos = 0;
  var qtdVotosbranco = 0;


  var voto;
  
  var counter = 0;
  while(counter < numEleitores){
    voto = getNumber("Voto -> ");
    if(voto == 1) qtdVotosCand1++;
    if(voto == 2) qtdVotosCand2++;
    if(voto == 3) qtdVotosCand3++;
    if(voto == 9) qtdVotosNulos++;
    if(voto == 0) qtdVotosbranco++;
  }  
}