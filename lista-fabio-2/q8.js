import { input } from "../io_utils.js"

// leia a data atual e data de nascimento de uma pessoa,
// calcule e escreva sua idade exata em anos

function main() {

    const today = input("Insira a data atual (hoje) no formato dd/mm/aaaa: ")
    const birth = input("Insira uma data de nascimento no formato dd/mm/aaaa: ")

    // const [todayDay, todayMonth, todayYear] = today.split("/").map(Number)
    // const [BirthDay, BirthMonth, BirthYear] = birth.split("/").map(Number)
    // const age = calcularIdadeDetailed(today, birth)

    // Utilizando este overload da função calcualarIdade, o texto é processado dentro da função
    const age = calcularIdade(today, birth)

    console.log(`Idade: ${age}`)

}


// Entrada de datas como strings no formato dd/mm/aaaa
function calcularIdade(date1, date2) {


    const [day1, month1, year1] = date1.split("/").map(Number)
    const [day2, month2, year2] = date2.split("/").map(Number)

    const yearDiff = year1 - year2
    const monthDiff = month1 - month2
    const dateDiff = day1 - day2
    let age = yearDiff

    // Se o dia ou o mes forem anteriores a data atual, subtrair 1 da idade pois
    // a pessoa ainda não completou aniversário naquele ano.
    if (monthDiff < 0) age--
    else if (monthDiff === 0 && dateDiff < 0) age--
    return age
}

// Entrada de datas com argumentos detalhados
// data1: Dia atual
// data2: Dia Nascimento
function calcularIdadeDetailed(day1, month1, year1, day2, month2, year2) {
    const yearDiff = year1 - year2
    const monthDiff = month1 - month2
    const dateDiff = day1 - day2
    let age = yearDiff

    // Se o dia ou o mes forem anteriores a data atual, subtrair 1 da idade pois
    // a pessoa ainda não completou aniversário naquele ano.
    if (monthDiff <= 0 && dateDiff < 0) age--
    return age
}

main()