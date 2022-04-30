// Leia 3 valores de ponto flutuante e calcule as raizes da equacao de bhaskara.
// se n for possivel calcular as raizes, caso a == 0 ou delta < 0:
// "Impossivel calcular"
// "R1 = "
// "R2 = "

import 'dart:math';
import '../../io_utils.dart';

void main(){
    var entrada = input("Insira 4 numeros inteiros: ").split(" ")
        .map((num) => double.parse(num)).toList();

    var raizes = calcularRaizes(entrada[0], entrada[1], entrada[2]);

    if(raizes != false){
        var x1 = raizes[0];
        var x2 = raizes[1];
        print("R1 = $x1");
        print("R2 = $x2");
    }
    else print("Impossivel calcular");
}
// parseFloat

dynamic calcularRaizes(a, b, c){

    if(a == 0) return false;

    double delta = b*b - 4*a*c;

    if(delta < 0) return false;

    double x1 = (-b + sqrt(delta)) / 2*a;
    double x2 = (-b - sqrt(delta)) / 2*a;

    return [x1.toStringAsFixed(5), x2.toStringAsFixed(5)].toList();

}