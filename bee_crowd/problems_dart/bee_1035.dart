// Leia 4 valores inteiros A b c e d.

import '../../io_utils.dart';

void main(){
    var entrada = input("Insira 4 numeros inteiros: ").split(" ")
        .map((num) => int.parse(num)).toList();

    var verificacao = verficarCondicoes(entrada[0], entrada[1], entrada[2], entrada[3]);

    if(verificacao) print("Valores aceitos");
    else print("Valores nao aceitos");
}

bool verficarCondicoes(int a,int b,int c,int d){

    if( (b > c && d > a )&&
        (c + d > a + b) &&
        (c > 0 && d > 0) &&
        (a % 2 == 0)){
            return true;
        }
    else return false;

}