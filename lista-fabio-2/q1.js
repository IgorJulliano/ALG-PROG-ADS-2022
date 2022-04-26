import {input} from "../io_utils.js"
// leia 3 numeros, verifique e escreva quantos numero iguais existem entre os numeros.

function main() {
    const [num1, num2, num3] = input("insira 3 números separdos por espaço: ").split(" ").map(Number)

    let result = contar_iguais(num1, num2, num3)

    console.log(`Há ${result} número(s) que se repetem.`)
}
main()

function contar_iguais(n1, n2, n3){
    let qtd = 0
    if(n1 === n2 && n2 === n3) qtd = 3
    else if(n1 === n2 || n2 === n3 || n3 === n1) qtd = 2
    return qtd
}
function count_equals(numbers) {
    let x
    
}