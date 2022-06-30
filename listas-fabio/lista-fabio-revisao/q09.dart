import '../../io_utils.dart';

void main() {
  
  var numero = getNumber("Insira um número entre 1 e 7 -> ");

  var diaSemana = diaDaSemana(numero);

  print("Dia da semana: $diaSemana");

}


String diaDaSemana(num dia){

  if(dia == 1) return "Domingo";
  if(dia == 2) return "Segunda-feira";
  if(dia == 3) return "Terça-feira";
  if(dia == 4) return "Quarta-feira";
  if(dia == 5) return "Quinta-feira";
  if(dia == 6) return "Sexta-feira";
  if(dia == 7) return "Sabado";
  return "Número inválido";
}