import { input } from "../../io_utils.js";

// Mapeia todas os problemas em funções e aponta quantas linhas tem o arquivo de input
const quests = [
    { funcao: (lines) => bee_1000(lines), numero_inputs: 0 }, { funcao: (lines) => bee_1001(lines), numero_inputs: 2 },
    { funcao: (lines) => bee_1002(lines), numero_inputs: 1 }, { funcao: (lines) => bee_1003(lines), numero_inputs: 2 },
    { funcao: (lines) => bee_1004(lines), numero_inputs: 2 }, { funcao: (lines) => bee_1005(lines), numero_inputs: 2 },
    { funcao: (lines) => bee_1006(lines), numero_inputs: 3 }, { funcao: (lines) => bee_1007(lines), numero_inputs: 4 },
    { funcao: (lines) => bee_1008(lines), numero_inputs: 3 }, { funcao: (lines) => bee_1009(lines), numero_inputs: 3 },
    { funcao: (lines) => bee_1010(lines), numero_inputs: 2 }, { funcao: (lines) => bee_1011(lines), numero_inputs: 1 },
    { funcao: (lines) => bee_1012(lines), numero_inputs: 1 }, { funcao: (lines) => bee_1013(lines), numero_inputs: 1 },
    { funcao: (lines) => bee_1014(lines), numero_inputs: 2 }, { funcao: (lines) => bee_1015(lines), numero_inputs: 2 },
    { funcao: (lines) => bee_1016(lines), numero_inputs: 1 }, { funcao: (lines) => bee_1017(lines), numero_inputs: 2 },
    { funcao: (lines) => bee_1018(lines), numero_inputs: 2 }, { funcao: (lines) => bee_1019(lines), numero_inputs: 1 },
    { funcao: (lines) => bee_1020(lines), numero_inputs: 1 }, { funcao: (lines) => bee_1021(lines), numero_inputs: 1 }
]
const QUEST_COUNT = quests.length

function main() {

    let lines = []

    const option = Number(input("Qual problema deseja vizualizar: "))

    if (option >= 0 & option <= QUEST_COUNT) {
        console.clear()

        // Capta do usuário os inputs necessários
        for (let i = 0; i < quests[option].numero_inputs; i++) {
            let aux = input(`${i + 1}° input: `)
            lines[i] = aux
        }

        quests[option].funcao(lines)
    }
}
main()

function bee_1000(lines) {
    console.log("Hello World!")
}
function bee_1001(lines) {
    const a = Number(lines[0])
    const b = Number(lines[1])
    console.log(`X = ${a + b}`)
}
function bee_1002(lines) {
    const PI = 3.14159
    const raio = Number(lines[0])
    const area = PI * raio ** 2
    console.log(`A=${area.toFixed(4)}`)
}
function bee_1003(lines) {
    const A = Number(lines[0])
    const B = Number(lines[1])
    const SOMA = A + B
    console.log(`SOMA = ${SOMA}`)
}
function bee_1004(lines) {
    const A = Number(lines[0])
    const B = Number(lines[1])
    const PROD = A * B
    console.log(`PROD = ${PROD}`)
}
function bee_1005(lines) {
    const A = Number(lines[0])
    const B = Number(lines[1])
    const pesoA = 3.5
    const pesoB = 7.5
    const MEDIA = ((A * pesoA) + (B * pesoB)) / (pesoA + pesoB)
    console.log(`MEDIA = ${MEDIA.toFixed(5)}`)
}
function bee_1006(lines) {
    const A = Number(lines[0])
    const B = Number(lines[1])
    const C = Number(lines[2])
    const pesoA = 2
    const pesoB = 3
    const pesoC = 5
    const MEDIA = ((A * pesoA) + (B * pesoB) + (C * pesoC)) / (pesoA + pesoB + pesoC)
    console.log(`MEDIA = ${MEDIA.toFixed(1)}`)
}
function bee_1007(lines) {
    const A = Number(lines[0])
    const B = Number(lines[1])
    const C = Number(lines[2])
    const D = Number(lines[3])
    const DIFERENCA = A * B - C * D
    console.log(`DIFERENCA = ${DIFERENCA}`)
}
function bee_1008(lines) {
    const number = Number(lines[0])
    const hours = Number(lines[1])
    const salary = Number(lines[2])
    const salaryMonth = salary * hours
    console.log(`NUMBER = ${number}`)
    console.log(`SALARY = U$ ${salaryMonth.toFixed(2)}`)
}
function bee_1009(lines) {
    const salesman = lines[0]
    const salary = Number(lines[1])
    const sales = Number(lines[2])
    const salaryFinal = salary + (sales * (15 / 100))
    console.log(`TOTAL = R$ ${salaryFinal.toFixed(2)}`)
}
function bee_1010(lines) {
    const qtd1 = Number(lines[0].split(" ")[1])
    const price1 = Number(lines[0].split(" ")[2])
    const qtd2 = Number(lines[1].split(" ")[1])
    const price2 = Number(lines[1].split(" ")[2])
    const total1 = qtd1 * price1
    const total2 = qtd2 * price2
    console.log(`VALOR A PAGAR: R$ ${(total1 + total2).toFixed(2)}`)
}
function bee_1011(lines) {
    const PI = 3.14159
    const raio = lines[0]
    const volume = (4 * PI * raio ** 3) / 3
    console.log(`VOLUME = ${volume.toFixed(3)}`)
}
function bee_1012(lines) {
    const PI = 3.14159
    const A = Number(lines[0].split(" ")[0])
    const B = Number(lines[0].split(" ")[1])
    const C = Number(lines[0].split(" ")[2])

    const triangulo = (A * C) / 2
    const circulo = PI * C ** 2
    const trapezio = (A + B) * C / 2
    const quadrado = B ** 2
    const retangulo = A * B

    console.log(`TRIANGULO: ${triangulo.toFixed(3)}`)
    console.log(`CIRCULO: ${circulo.toFixed(3)}`)
    console.log(`TRAPEZIO: ${trapezio.toFixed(3)}`)
    console.log(`QUADRADO: ${quadrado.toFixed(3)}`)
    console.log(`RETANGULO: ${retangulo.toFixed(3)}`)
}
function bee_1013(lines) {
    const A = Number(lines[0].split(" ")[0])
    const B = Number(lines[0].split(" ")[1])
    const C = Number(lines[0].split(" ")[2])

    const result = Math.max(A, B, C)

    console.log(`${result.toFixed(0)} eh o maior`)
}
function bee_1014(lines) {
    const distance = Number(lines[0])
    const fuel = Number(lines[1])

    const consumo = distance / fuel

    console.log(`${consumo.toFixed(3)} km/l`)
}
function bee_1015(lines) {
    const PI = 3.14159
    const X1 = Number(lines[0].split(" ")[0])
    const Y1 = Number(lines[0].split(" ")[1])
    const X2 = Number(lines[1].split(" ")[0])
    const Y2 = Number(lines[1].split(" ")[1])

    const distance = Math.sqrt((X2 - X1) ** 2 + (Y2 - Y1) ** 2)

    console.log(`${distance.toFixed(4)}`)
}
function bee_1016(lines) {
    const distance = Number(lines[0])

    const tempo = distance * 2

    console.log(`${tempo.toFixed(0)} minutos`)
}
function bee_1017(lines) {
    const kmL = 12
    const tempo = Number(lines[0])
    const velocidade = Number(lines[1])

    const result = (tempo * velocidade) / kmL

    console.log(`${result.toFixed(3)}`)
}
function bee_1018(lines) {
    const valor = Number(lines[0])
    let valorRestante = valor;
    const numNotas100 = Math.trunc(valorRestante / 100);
    valorRestante = valorRestante % 100;
    const numNotas50 = Math.trunc(valorRestante / 50);
    valorRestante = valorRestante % 50
    const numNotas20 = Math.trunc(valorRestante / 20);
    valorRestante = valorRestante % 20
    const numNotas10 = Math.trunc(valorRestante / 10);
    valorRestante = valorRestante % 10
    const numNotas5 = Math.trunc(valorRestante / 5);
    valorRestante = valorRestante % 5
    const numNotas2 = Math.trunc(valorRestante / 2);
    valorRestante = valorRestante % 2
    const numMoedas1 = valorRestante;
    valorRestante = valorRestante % 1;

    console.log(`${valor}`)
    console.log(`${numNotas100} nota(s) de R$ 100,00`)
    console.log(`${numNotas50} nota(s) de R$ 50,00`)
    console.log(`${numNotas20} nota(s) de R$ 20,00`)
    console.log(`${numNotas10} nota(s) de R$ 10,00`)
    console.log(`${numNotas5} nota(s) de R$ 5,00`)
    console.log(`${numNotas2} nota(s) de R$ 2,00`)
    console.log(`${numMoedas1} nota(s) de R$ 1,00`)
}
function bee_1019(lines) {
    let seconds = Number(lines[0])

    let hours = Math.trunc(seconds / 3600)
    let minutes = Math.trunc((seconds % 3600) / 60)
    seconds = Math.trunc(seconds % 60)

    console.log(`${hours}:${minutes}:${seconds}`)
}
function bee_1020(lines) {
    let days = Number(lines[0])

    let year = Math.trunc(days / 365)
    let month = Math.trunc((days % 365) / 30)
    days = Math.trunc((days % 365) % 30)

    console.log(`${year} ano(s)`)
    console.log(`${month} mes(es)`)
    console.log(`${days} dia(s)`)
}
function bee_1021(lines) {
    const valor = parseFloat(lines[0])
    let valorRestante = parseInt(valor * 100);

    // lista de objetos contendo o valor e a quantidade
    // de cada cedula e moeda
    const cedulas = [
        { valor: 100, qtd: 0 },
        { valor: 50, qtd: 0 },
        { valor: 20, qtd: 0 },
        { valor: 10, qtd: 0 },
        { valor: 5, qtd: 0 },
        { valor: 2, qtd: 0 }
    ]
    const moedas = [
        { valor: 1, qtd: 0 },
        { valor: 0.50, qtd: 0 },
        { valor: 0.25, qtd: 0 },
        { valor: 0.10, qtd: 0 },
        { valor: 0.05, qtd: 0 },
        { valor: 0.01, qtd: 0 }
    ]
    // para cada 'cedula', executa o bloco de código seguinte:
    cedulas.forEach(cedula => {
        // Altera a propriedade de quantidade da cedula.                    
        //  |            Multiplicando por 100 para adaptar o valor a mudança feita na entrada
        // \/                                                 \/
        cedula.qtd = Math.trunc(valorRestante / (cedula.valor * 100));
        // Valor restante a ser calculado.
        valorRestante = (valorRestante % (cedula.valor * 100))
    });

    moedas.forEach(moeda => {
        moeda.qtd = Math.trunc(valorRestante / (moeda.valor * 100));
        valorRestante = (valorRestante % (moeda.valor * 100))
    });
    console.log(`NOTAS:`)
    cedulas.forEach(cedula => {
        console.log(`${cedula.qtd} nota(s) de R$ ${cedula.valor.toFixed(2)}`)
    });

    console.log(`MOEDAS:`)
    moedas.forEach(moeda => {
        console.log(`${moeda.qtd} moeda(s) de R$ ${moeda.valor.toFixed(2)}`)
    });
    // const valor = parseFloat(lines[0])

    // let valorRestante = parseInt(valor * 100);

    // const numNotas100 = Math.trunc(valorRestante / 10000);
    // valorRestante = (valorRestante % 10000)

    // const numNotas50 = Math.trunc(valorRestante / 5000);
    // valorRestante = valorRestante % 5000

    // const numNotas20 = Math.trunc(valorRestante / 2000);
    // valorRestante = valorRestante % 2000

    // const numNotas10 = Math.trunc(valorRestante / 1000);
    // valorRestante = valorRestante % 1000

    // const numNotas5 = Math.trunc(valorRestante / 500);
    // valorRestante = valorRestante % 500

    // const numNotas2 = Math.trunc(valorRestante / 200);
    // valorRestante = valorRestante % 200

    // const numMoedas1 = Math.trunc(valorRestante / 100);
    // valorRestante = valorRestante % 100;

    // const numMoedas50 = Math.trunc(valorRestante / 50)
    // valorRestante = valorRestante % 50

    // const numMoedas25 = Math.trunc(valorRestante / 25)
    // valorRestante = valorRestante % 25

    // const numMoedas10 = Math.trunc(valorRestante / 10)
    // valorRestante = valorRestante % 10

    // const numMoedas05 = Math.trunc(valorRestante / 5)
    // valorRestante = valorRestante % 5

    // const numMoedas01 = Math.trunc(valorRestante)
    // valorRestante = valorRestante % 1

    // console.log(`NOTAS:`)
    // console.log(`${numNotas100} nota(s) de R$ 100.00`)
    // console.log(`${numNotas50} nota(s) de R$ 50.00`)
    // console.log(`${numNotas20} nota(s) de R$ 20.00`)
    // console.log(`${numNotas10} nota(s) de R$ 10.00`)
    // console.log(`${numNotas5} nota(s) de R$ 5.00`)
    // console.log(`${numNotas2} nota(s) de R$ 2.00`)
    // console.log(`MOEDAS:`)
    // console.log(`${numMoedas1} moeda(s) de R$ 1.00`)
    // console.log(`${numMoedas50} moeda(s) de R$ 0.50`)
    // console.log(`${numMoedas25} moeda(s) de R$ 0.25`)
    // console.log(`${numMoedas10} moeda(s) de R$ 0.10`)
    // console.log(`${numMoedas05} moeda(s) de R$ 0.05`)
    // console.log(`${numMoedas01} moeda(s) de R$ 0.01`)
}