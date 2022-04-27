// Leia a hora de inicio de um jogo e a hora do fim do jogo. Calcule e escreva a duração do jogo,
// sabendo-se que o tempo maximo de duração do jogo é de 24 horas e que ele pode inciar em um dia e terminar no outro

import { input } from "../io_utils.js"

function main() {
    const [horaInicio, minutoInicio] = input("Insira a hora de inicio (hh:mm | 24h): ")
    .split(":").map((e) => Number(e));
    const [horaFinal, minutoFinal] = input("Insira a hora de finalização (hh:mm | 24h): ")
    .split(":").map(Number);

    console.log(horaInicio, minutoInicio)
    console.log(horaFinal, minutoFinal)

    const duracao = calcularDuracao(horaInicio, minutoInicio, horaFinal, minutoFinal);

    console.log(`Duração: ${duracao.horas}:${duracao.minutos}`)

}
// parametros: inteiros
function calcularDuracao(horaInicio, minutoInicio, horaFinal, minutoFinal) {

    let difMinuto;
    let difHora;
    //                                      \/ horas até meia noite
    if (horaFinal < horaInicio) difHora = (24 - horaInicio) + horaFinal;
    else difHora = horaFinal - horaInicio; //                /\ horas passadas a partir de meia noite
    
    if (minutoFinal < minutoInicio) {
        difMinuto = minutoInicio - minutoFinal;
        difHora--;
    } else difMinuto = minutoFinal - minutoInicio;

    return { horas: difHora,
        minutos: difMinuto }
}


// parametros: string
function calcularDuracaoAlt(horaInicial, horaFinal) {
    const [horaIni, minutoIni] = horaInicial.split(":").map(Number)
    const [horaFin, minutoFin] = horaFinal.split(":").map(Number)

    let difMinuto;
    let difHora;
    //                                      \/ horas até meia noite
    if (horaFin < horaIni) difHora = (24 - horaIni) + horaFin;
    else difHora = horaIni - horaFin; //                /\ horas passadas a partir de meia noite
    
    if (minutoFin < minutoIni) {
        difMinuto = minutoIni - minutoFin;
        difHora--;
    } else difMinuto = minutoFin - minutoIni;

    return `${difHora}:${difMinuto}`
}

main()