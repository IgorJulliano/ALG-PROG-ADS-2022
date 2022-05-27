import 'dart:io';

void main()
{
    const SENHA = "2002";
    
    var senhaUsuario = stdin.readLineSync()?? "";
    
    while(senhaUsuario != SENHA){
        print("Senha Invalida");
        senhaUsuario = stdin.readLineSync()?? "";
    }
    print("Acesso Permitido");

}
