import '../../io_utils.dart';

void main() {
  int q01 = input("Telefonou para vitima? (1)Sim ou (2)Não -> ")    == 1 ? 1 : 0;
  int q02 = input("Exteve no local do crime? (1)Sim ou (2)Não -> ") == 1 ? 1 : 0;
  int q03 = input("Mora perto da vitima? (1)Sim ou (2)Não -> ")     == 1 ? 1 : 0;
  int q04 = input("Devia para vitíma? (1)Sim ou (2)Não -> ")        == 1 ? 1 : 0;
  int q05 = input("Ja trabalhou com a vitíma? (1)Sim ou (2)Não -> ")== 1 ? 1 : 0;

  var soma = q01 + q02 + q03 + q04 + q05;

  if(soma < 2) print("Inocente");
  else if(soma < 3) print("Suspeito");
  else if(soma < 5) print("Cúmplice");
  else print("Assassino");
}