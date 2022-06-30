// leia uma data e verifique, escreva se a data é ou não válida

import '../../io_utils.dart';

void main(){
  var entrada = input("insira um data dd/mm/aaaa: ").split("/")
    .map((e) => int.parse(e)).toList();
    
  if(validarData(entrada)) print("Data válida!");

  else print("Data invalida!.");
  
}

bool validarData(List<int> entrada) {
  var dia = entrada[0];
  var mes = entrada[1];
  var ano = entrada[2];

  bool validacao = dia >= 1 && dia <= 31;
  validacao &= mes >= 1 && mes <= 12;
  validacao &= ano >= 1;

  return validacao;
}