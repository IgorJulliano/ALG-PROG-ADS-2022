// Verifique a validade de uma senha fornecida pelo usuário.
// A senha é 1234
// O algoritimo deve escrever uma mensagem de permissão de acesso ou não.


import '../../io_utils.dart';

void main(List<String> args) {
  var login = input("Insira a senha: ");

  var validacao = validarLogin(login);

  if(validacao) print("Logado com sucesso. Acesso permitido.");
  else print("Acesso negado.");
}

bool validarLogin(String login) {

  const PASS = "1234";
  
  if(login == PASS) return true;
  else return false;
}