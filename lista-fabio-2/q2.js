import { input } from "../io_utils.js"

// Leia dois numeros, verifique e escreva o maior e o menor entre os numeros lidos

function main(){
    // Entrada
    const numbers = input("Insira numeros separados por espaço (ex.: '5 2'): ").split(" ").map(Number)
    
    // processamento | Utilizei dois metodos diferentes
    let maior = verificarMaior(numbers)
    let menor = verificarMenor(numbers[0], numbers[1])

    
    // Saída
    console.log("Maior:", maior)
    console.log("Menor:", menor)

}
main()

// Metodo utilizando um simples algoritimos para n elemntos
// recebe vetor de numeros e retorna o maior deles
function verificarMaior(numbers){

    let maior = numbers[0]

    for(let i = 1; i < numbers.length; i++) {
        if (numbers[i] > maior) maior = numbers[i]
    }

    return maior
}

// Metodo utilizando IF - ELSE - ELSE IF
function verificarMenor(n1, n2){
    if (n1 > n2) {
        return n1
    }
    else {
        return n2
    }
}