import prompt from "prompt-sync";

export const input = prompt({
    sigint: false
});
export const inputNumber = Number(prompt({
    sigint: false
}));

export function print(mensage, ...parameters){
    mensage = mensage?? "";
    console.log(mensage, ...parameters);
}

export function reverseDigits(number){
    
    let str = number.toString().split("").reverse().join("")
    return parseInt(str)
}