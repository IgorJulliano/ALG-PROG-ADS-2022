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
    // coisa feia kkk
    
    let str = number.toString().split("").reverse().join("")
    return parseInt(str)
    // if (typeof number == "string") return Number(number.split("").reverse().join())
    // throw console.error("Invalid parameter! number should be Number");
}