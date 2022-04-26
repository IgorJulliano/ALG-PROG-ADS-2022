// Leia 3 numeros, verifique e escreva o maior entre os numeros lidos.

import { input, print } from "../io_utils";

function main(){

    const entrada = input("Insira 3 numeros separados por espaço (ex.: '5 4 7'): ")
    const [num1, num2, num3] = entrada.split(" ").map(Number)

    const maior = verificarMaiorNumero(number)

    print(`O maior dentre os digitados é: ${maior}`)

}

function verificarMaiorNumero(n1, n2, n3){
    let maior
    if(n1 > n2 | n3) maior = n1
    if(n2 > n1 | n3) maior = n2
    if(n3 > n1 | n2) maior = n3
    return maior
}