import { input, print } from "../io_utils.js";

const initial = 1
let usrInput = Number(input("Insira um número: "))
let result = sumAllNumbers(initial, usrInput)

print(`O resultado da soma de todos os numeros é: ${result}`)

function sumAllNumbers(first, last){
    (first + last) * (last / 2)
}