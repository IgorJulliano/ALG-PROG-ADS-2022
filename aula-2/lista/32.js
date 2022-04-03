import {input, print, reverseDigits} from "./io_utils.js";


function main() {
    
    // Leia um número inteiro (3 dígitos), calcule e escreva a diferença entre o número e seu inverso.
    const numero = Number(input("Escreva um número inteiro: "))

    const numero_inverso = reverseDigits(numero)
    print("inverso: ", numero_inverso)
    const resultado = numero - numero_inverso
    print(`A diferença entre o número e seu inverso: ${resultado}`)

}

main();