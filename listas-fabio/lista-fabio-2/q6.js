import { input } from "../io_utils.js"

function main() {

    const angulo1 = Number(input("Insira angulo 1: "))
    const angulo2 = Number(input("Insira angulo 2: "))
    const angulo3 = Number(input("Insira angulo 3: "))

    if (angulo1 + angulo2 + angulo3 !== 180) return 0;

    const tipo = classTrian(angulo1, angulo2, angulo3)

    console.log(`Tipo: ${tipo}`)

}

function classTrian(a1, a2, a3) {
    let tipo
    if (90 === a1 | a2 | a3) tipo = "retângulo"
    else if (90 < a1 | a2 | a3) tipo = "obtusângulo"
    else if (90 > a1 & a2 & a3) tipo = "acutângulo"
    return tipo
}


main()