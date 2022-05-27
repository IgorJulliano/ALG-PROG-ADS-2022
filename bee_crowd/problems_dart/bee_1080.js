import { input } from "../../io_utils.js";
function main() {

    //entrada
    let valor
    let counter = 1
    let maior = Number.MIN_VALUE
    let posicao_maior = counter
    
    //process

    while (counter <= 10) {
        valor = Number(input(`Digite um Valor ${counter}: `))
        
        counter++

        if (valor > maior) {
            maior = valor
            posicao_maior = counter
        }
        

    }

    //saida

    console.log(`${maior}`)
    
    console.log(`${posicao_maior}`)


}
main()