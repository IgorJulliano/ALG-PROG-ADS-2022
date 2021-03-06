import { input, inputNumber, print, reverseDigits } from "../io_utils.js";


const quests = {
    1: () => q01(),  2: () => q02(),  3: () => q03(),  4: () => q04(),
    5: () => q05(),  6: () => q06(),  7: () => q07(),  8: () => q08(),
    9: () => q09(), 10: () => q10(), 11: () => q11(), 12: () => q12(),
   13: () => q13(), 14: () => q14(), 15: () => q15(), 16: () => q16(),
   17: () => q17(), 18: () => q18(), 19: () => q19(), 20: () => q20(),
   21: () => q21(), 22: () => q22(), 23: () => q23(), 24: () => q24(),
   25: () => q25(), 26: () => q26(), 27: () => q27(), 28: () => q28(),
   29: () => q29(), 30: () => q30(), 31: () => q31(), 32: () => q32(),
   33: () => q33(), 34: () => q34(), 35: () => q35(), 36: () => q36(),
   37: () => q37(), 38: () => q38(), 39: () => q39(), 40: () => q40(),
   41: () => q41(), 42: () => q42(), 43: () => q43(), 44: () => q44(),
   45: () => q45(), 46: () => q46()
};
let option = Number(input("Qual atividade vizualizar: "));
print("")
quests[option]();

function q01() {
    // Leia uma velocidade em m/s,
    // calcule e escreva esta velocidade em km/h. (Vkm/h = Vm/s * 3.6)
    print("1. Leia uma velocidade em m/s, calcule e escreva esta velocidade em km/h. (Vkm/h = Vm/s * 3.6)")
    
    const vel_ms = Number(input("Valor da velocidade em m/s: "));
    
    let vel_kmh = vel_ms * 3.6;
    
    print(`Valor em Km/h: ${vel_kmh}Km/h`);
}
function q02() {
    // Leia um valor em horas e um valor em minutos, calcule e escreva o equivalente em minutos.
    print("2. Leia um valor em horas e um valor em minutos, calcule e escreva o equivalente em minutos.")
    const hours = Number(input("Valor de horas: "));
    let minutes = Number(input("Valor de minutos: "));
    minutes += hours * 60
    
    print(`Valor em minutos: ${minutes} minuto(s)`);
}
function q03() {
    // Leia um valor em minutos, calcule e escreva o equivalente em horas e minutos
    print("3. Leia um valor em minutos, calcule e escreva o equivalente em horas e minutos.")
    const value = Number(input("Valor em minutos: "));
    const hours = Math.trunc(value / 60)
    const minutes = value % 60
    
    print(`Valor como hora: ${hours} hora(s) e ${minutes} minuto(s)`);
}
function q04() {
    // Leia o valor do d??lar e um valor em d??lar, calcule e escreva o equivalente em real (R$).
    print("4. Leia o valor do d??lar e um valor em d??lar, calcule e escreva o equivalente em real (R$).")
    const cotacao_dolar = Number(input("Cota????o atual do Dolar: R$ "));
    const valor_dolar = Number(input("Valor em Dolar a ser convertido: $ "));
    
    const real = cotacao_dolar * valor_dolar
    
    print();
    print(`Valor em reais: R$ ${real.toFixed(2)}`);
    print();
}
function q05() {
    // Leia um n??mero inteiro (3 d??gitos), calcule e escreva a soma de seus elementos (C + D + U).
    print("5. Leia um n??mero inteiro (3 d??gitos), calcule e escreva a soma de seus elementos (C + D + U).")
    const numero = input("Insira um numero de tr??s digitos: ");
    
    const C = Number(numero[0]);
    const D = Number(numero[1]);
    const U = Number(numero[2]);
    const sum = C + D + U;

    print(`Centena: ${C}`);
    print(`Dezena:  ${D}`);
    print(`Unidade: ${U}`);
    print();
    print(`Soma: ${sum}`);
    print();
}
function q06() {
    // Leia uma velocidade em km/h, calcule e escreva esta velocidade em m/s. (Vm/s = Vkm/h / 3.6)
    print("6. Leia uma velocidade em km/h, calcule e escreva esta velocidade em m/s. (Vm/s = Vkm/h / 3.6)")
    const vel_kmh = Number(input("Valor da velocidade em Km/h: "));
    let vel_ms = vel_kmh / 3.6;
    
    print(`Valor em m/s: ${vel_ms}m/s`);
}
function q07() {
    // Leia 3 n??meros, calcule e escreva a soma dos 2 primeiros e a diferen??a entre os 2 ??ltimos.
    print("7. Leia 3 n??meros, calcule e escreva a soma dos 2 primeiros e a diferen??a entre os 2 ??ltimos.")
    const num1 = Number(input("Insira o 1?? n??mero: "));
    const num2 = Number(input("Insira o 2?? n??mero: "));
    const num3 = Number(input("Insira o 3?? n??mero: "));
    
    print(`Soma dos dois primeiros: ${num1 + num2}`);
    print(`Diferen??a entre os dois ??ltimos: ${num2 - num3}`);
}
function q08() {
    // Leia 2 n??meros, calcule e escreva a divis??o da soma pela subtra????o dos n??meros lidos.
    print("8. Leia 2 n??meros, calcule e escreva a divis??o da soma pela subtra????o dos n??meros lidos.")
    const num1 = Number(input("Insira o 1?? n??mero: "));
    const num2 = Number(input("Insira o 2?? n??mero: "));
    
    if (num1 === num2) {
        print("Insira dois numeros diferentes!");
        return 0;
    }
    let result = (num1 + num2) / (num1 - num2);
    print(`Resultado: ${result}`);
    
}
function q09() {
    // Leia 2 n??meros (A, B) e escreva-os em ordem inversa (B, A).
    print("9. Leia 2 n??meros (A, B) e escreva-os em ordem inversa (B, A).")
    const num1 = Number(input("Insira o 1?? n??mero: "));
    const num2 = Number(input("Insira o 2?? n??mero: "));
    
    print(`Ordem original: ${num1}, ${num2}`);
    print(`Ordem inversa:  ${num2}, ${num1}`);
    
}
function q10() {
    // Leia 2 n??meros inteiros, calcule e escreva o quociente e o resto da divis??o do 1?? pelo 2??.
    print("10. Leia 2 n??meros inteiros, calcule e escreva o quociente e o resto da divis??o do 1o pelo 2o.")
    const num1 = Number(input("Insira o 1?? n??mero: "));
    const num2 = Number(input("Insira o 2?? n??mero: "));
    const quociente = Math.trunc(num1 / num2)
    const resto = num1 % num2
    
    print(`Quociente: ${quociente}`);
    print(`Resto:  ${resto}`);
    
}
function q11() {
    // Leia um n??mero inteiro (3 d??gitos) e escreva o inverso do n??mero. (Ex.: n??mero = 532 ; inverso = 235)
    print("11. Leia um n??mero inteiro (3 d??gitos) e escreva o inverso do n??mero. (Ex.: n??mero = 532 ; inverso = 235)")
    const numero = Number(input("Insira um numero de 3 digitos: "));
    const numero_inverso = reverseDigits(numero);
    print(`O inverso de ${numero} ??  ${numero_inverso}`)
}
function q12() {
    // Leia o sal??rio de um trabalhador e escreva seu novo sal??rio com um aumento de 25%.
    const salario = Number(input("Insira o valor do seu sal??rio: "));
    print("12. Leia o sal??rio de um trabalhador e escreva seu novo sal??rio com um aumento de 25%.")
    const aumento = salario + salario * (25 / 100);
    print(`O sal??rio com aumento de 25%: ${aumento}`);
    
    
}
function q13() {
    // Leia um valor em real (R$), calcule e escreva 70% deste valor.
    print("13. Leia um valor em real (R$), calcule e escreva 70% deste valor.")
    const valor = Number(input("Insira um valor: "))
    //                     70 por cem | 70%
    const setenta = valor * (70 / 100)
    
    print(`70% de ${valor} ?? igual a ${setenta}`)
    
}
function q14() {
    // Leia 3 notas de um aluno e o peso de cada nota, calcule e escreva a m??dia ponderada.
    print("14. Leia 3 notas de um aluno e o peso de cada nota, calcule e escreva a m??dia ponderada.")
    
    const nota1 = Number(input("Nota 1: "));

    const peso1 = Number(input("Peso 1: "));
    const nota2 = Number(input("Nota 2: "));
    const peso2 = Number(input("Peso 2: "));
    const nota3 = Number(input("Nota 3: "));
    const peso3 = Number(input("Peso 3: "));
    //#region 
    const notas_peso = nota1 * peso1 + nota2 * peso2 + nota3 * peso3;
    const soma_pesos = peso1 + peso2 + peso3;
    //#endregion
    const ponderada = notas_peso / soma_pesos;
    
    print(`M??dia ponderada das notas: ${ponderada}`);
}
function q15() {
    // Leia o valor da base e altura de um tri??ngulo, calcule e escreva sua ??rea. (??rea=(base * altura)/2)
    print("15. Leia o valor da base e altura de um tri??ngulo, calcule e escreva sua ??rea. (??rea=(base * altura)/2)")
    const base = Number(input("Base: "));
    const altura = Number(input("Altura: "));
    
    const area = (base * altura) / 2;
    
    print(`??rea do triangulo: ${area}`)
}
function q16() {
    // Leia o valor do lado de um quadrado, calcule e escreva sua ??rea. (??rea = lado2)
    print("16. Leia o valor do lado de um quadrado, calcule e escreva sua ??rea. (??rea = lado2)")
    
    const lado = Number(input("Insira o lado de um quadrado: "));
    const area = lado * lado;
    print(`??rea do quadrado: ${area}`)
}
function q17() {
    
    // Leia o valor da base e altura de um ret??ngulo, calcule e escreva sua ??rea. (??rea = base * altura)
    print("17. Leia o valor da base e altura de um ret??ngulo, calcule e escreva sua ??rea. (??rea = base * altura)")
    const base = inputNumber("Insira a base do ret??ngulo: ");
    const altura = inputNumber("Insira a altura do ret??ngulo: ");
    
    const area = base * altura;
    
    print(`A area do retangulo: ${area}`);
}
function q18() {
    // Leia o valor do raio de uma circunfer??ncia, calcule e escreva seu comprimento.(c = 2 * pi * r)
    print("18. Leia o valor do raio de uma circunfer??ncia, calcule e escreva seu comprimento.(c = 2 * p * r)")
    const PI = 3.14
    const raio = Number(input("Insira o raio da circunfer??ncia: "));
    
    const comprimento = 2 * PI * raio;
    
    print(`Comprimenro da circunfer??ncia: ${comprimento}`);
}
function q19() {
    // Leia o valor do raio de uma esfera, calcule e escreva seu volume. (v = (4 * p * r3 / 3) (p = 3,14))
    print("19. Leia o valor do raio de uma esfera, calcule e escreva seu volume. (v = (4 * p * r3) / 3) (p = 3,14)")
    const PI = 3.14
    const raio = Number(input("Insira o raio da esfera: "));
    
    const volume = (4 * PI * raio ** 3) / 3;
    
    print(`Volume da esfera: ${volume}`);
}
function q20() {
    // Leia uma temperatura em ??C, calcule e escreva a equivalente em ??F. (t??F = (9 * t??C + 160) / 5)
    print("20. Leia uma temperatura em ??C, calcule e escreva a equivalente em ??F. (t??F = (9 * t??C + 160) / 5)")
    
    const temp_C = Number(input("Insira a temperatura em ??C: "));
    
    const temp_F = (9 * temp_C + 160) / 5;
    
    print(`Temperatura em ??F: ${temp_F}`);
    
}
function q21() {
    // Leia uma temperatura em ??F, calcule e escreva a equivalente em ??C. (t??C = (5 * t??F - 160) / 9).
    print("21. Leia uma temperatura em ??F, calcule e escreva a equivalente em ??C. (t??C = (5 * t??F - 160) / 9).")
    const temp_F = Number(input("Insira a temperatura em ??C: "));
    
    const temp_C = (5 * temp_F - 160) / 9;
    
    print(`Temperatura em ??C: ${temp_C}`);
    
}
function q22() {
    // Leia um valor em km, calcule e escreva o equivalente em m.
    print("22. Leia um valor em km, calcule e escreva o equivalente em m.")
    const kilometer = Number(input("Insira um valor em quilometros: "));
    
    const metros = kilometer * 1000
    
    print(`Valor em metros: ${metros}`);
}
function q23() {
    // Leia um valor em kg, calcule e escreva o equivalente em g.
    print("23. Leia um valor em kg (quilograma), calcule e escreva o equivalente em g (grama).")
    const kilogram = Number(input("Insira um valor em quilograma: "));
    
    const gram = kilogram * 1000
    
    print(`Valor em grama: ${gram}`);
}
function q24() {
    // Leia um valor em m, calcule e escreva o equivalente em cm.
    print("24. Leia um valor em m, calcule e escreva o equivalente em cm.")
    const metro = Number(input("Insira um valor em metro: "));
    
    const centimeter = metro * 100
    
    print(`Valor em centimetros: ${centimeter}`);
}
function q25() {
    // Leia um n??mero inteiro de metros, calcule e escreva quantos Km e quantos metros ele corresponde.
    print("25. Leia um n??mero inteiro de metros, calcule e escreva quantos Km e quantos metros ele corresponde.")
    const metros = Number(input("Insira um valor em metros: "));
    
    const quilometers = metros / 1000
    
    print(`Valor em quilometros: ${quilometers}`);
    
}
function q26() {
    // Leia um n??mero inteiro de dias, calcule e escreva quantas semanas e quantos dias ele corresponde.
    print("26. Leia um n??mero inteiro de dias, calcule e escreva quantas semanas e quantos dias ele corresponde.")
    const num_dias = Number(input("Insira o numero de dias: "));
    
    const semana = Math.trunc(num_dias / 7);
    const dias = num_dias % 7;
    
    print(`${num_dias} dias corresponde a ${semana} semana(s) e ${dias} dias(s)`);
}
function q27() {
    // Leia um n??mero inteiro de segundos, calcule e escreva quantas horas, quantos minutos e quantos segundos ele corresponde.
    print("27. Leia um n??mero inteiro de segundos, calcule e escreva quantas horas, quantos minutos e quantos")
    print("segundos ele corresponde.")
    
    let segundos = Number(input("Insira os segundos: "))
    
    const horas = Math.trunc(segundos / 3600);
    const minutes = Math.trunc((segundos % 3600) / 60);
    const seconds = Math.trunc(segundos % 60)
    
    print(`Horas: ${horas} minutos: ${minutes}`);
}
function q28() {
    // Leia um n??mero inteiro de horas, calcule e escreva quantas semanas, quantos dias e quantas horas ele corresponde.
    
    print("28. Leia um n??mero inteiro de horas, calcule e escreva quantas semanas, quantos dias e quantas horas ele")
    print("corresponde.")
    let horas = Number(input("Insira as horas: "))
    
    const weeks = Math.trunc((horas / 24) / 7);
    const days = Math.trunc(horas % 168 / 24);
    const hours = Math.trunc(horas % 24)
    
    print(`${weeks} semana(s), ${days} dia(s) e ${hours} hora(s)`);
    
}
function q29() {
    // Leia um n??mero inteiro de meses, calcule e escreva quantos anos e quantos meses ele corresponde.
    print("29. Leia um n??mero inteiro de meses, calcule e escreva quantos anos e quantos meses ele corresponde.")
    let months = Number(input("Insira a quantidade de meses: "));
    
    const anos = Math.trunc(meses / 12)
    const meses = months % 12
    
    print(`${months} meses corresponde a ${anos}`);
}
function q30() {
    // Leia um n??mero inteiro de minutos, calcule e escreva quantos dias, quantas horas e quantos minutos ele corresponde.
    print("30. Leia um n??mero inteiro de minutos, calcule e escreva quantos dias, quantas horas e quantos minutos ele")
    print("corresponde.")
    
    let minutos = Number(input("Insira os segundos: "))
    
    const horas = Math.trunc(segundos / 3600);
    const minutes = Math.trunc((segundos % 3600) / 60);
    const seconds = Math.trunc(segundos % 60)

    print(`Horas: ${horas} minutos: ${minutes}`);
}
function q31() {
    // Leia um n??mero inteiro (4 d??gitos bin??rios), calcule e escreva o equivalente na base decimal.
    print("31. Leia um n??mero inteiro (4 d??gitos bin??rios), calcule e escreva o equivalente na base decimal.")
    
    const binario = Number(input("Escreva um numero bin??rio de 4 digitos: "));
    
    const decimal = parseInt(binario, 2);
    
    print(`A representa????o decimal do numero: ${decimal}`);
}
function q32() {
    // Leia um n??mero inteiro (3 d??gitos), calcule e escreva a diferen??a entre o n??mero e seu inverso.
    print("32. Leia um n??mero inteiro (3 d??gitos), calcule e escreva a diferen??a entre o n??mero e seu inverso.")
    const numero = Number(input("Escreva um n??mero inteiro: "))
    
    const numero_inverso = reverseDigits(numero)
    const resultado = numero - numero_inverso
    
    print(`A diferen??a entre o n??mero e seu inverso: ${resultado}`)
}
function q33() {
    // Leia um n??mero inteiro (3 d??gitos), calcule e escreva a soma do n??mero com seu inverso.
    print("33. Leia um n??mero inteiro (3 d??gitos), calcule e escreva a soma do n??mero com seu inverso.")
    print("(Ex.: n??mero = 532 ; inverso = 235 ; soma = 532 + 235 = 767).")
    const numero = Number(input("Escreva um n??mero inteiro: "))
    
    const numero_inverso = reverseDigits(numero)
    const resultado = numero + numero_inverso
    
    print(`A soma entre o n??mero e seu inverso: ${resultado}`)
}
function q34() {
    // Leia 3 n??meros, calcule e escreva a m??dia dos n??meros. 
    print("34. Leia 3 n??meros, calcule e escreva a m??dia dos n??meros.")
    const num1 = Number(input("Insira o numero 1: "));
    const num2 = Number(input("Insira o numero 2: "));
    const num3 = Number(input("Insira o numero 3: "));
    
    const media = (num1 + num2 + num3) / 3
}
function q35() {
    // Leia um n??mero inteiro (4 d??gitos), calcule e escreva a soma dos elementos que o comp??em. Ex.: n??mero = 9534 ; soma = 9+5+3+4 = 21.
    print("35. Leia um n??mero inteiro (4 d??gitos), calcule e escreva a soma dos elementos que o comp??em. Ex.:")
    print("n??mero = 9534 ; soma = 9+5+3+4 = 21.")
    
    const numero = Number(input("Insira um numero de 4 digitos: ")); // Exemplo de entrada: 9534
    
    const milhar = Math.trunc(numero / 1000)        // Math.trunc(9.534)    -> 9
    const centena = Math.trunc(numero % 1000 / 100) // Math.trunc(5.34)     -> 5
    const dezena = Math.trunc(numero % 100 / 10)    // Math.trunc(3.4)      -> 3
    const unidade = Math.trunc(numero % 10)         // Math.trunc(4)        -> 4
    
    const soma = milhar + centena + dezena + unidade// 9 + 5 + 3 + 4 -> 21
    
    print(`Soma dos algarismo: ${soma}`);
}
function q36() {
    // Leia a idade de uma pessoa expressa em anos, meses e dias e escreva-a expressa apenas em dias.
    print("36. Leia a idade de uma pessoa expressa em anos, meses e dias e escreva-a expressa apenas em dias.")
    const mes_aniversario = Number(input("Insira o m??s do seu anivers??rio: "));
    const dia_aniversario = Number(input("Insira o dia do seu anivers??rio: "));
    const aniversario_data = Date.now() - Date.UTC(2022, mes_aniversario, dia_aniversario) + Date.
    print(aniversario_data.toString())
    const teste = Date.now().Date - aniversario_data
    print(teste)
    
}
function q37() {
    // Leia a idade de uma pessoa expressa em dias e escreva-a expressa em anos, meses e dias.
    print("37. Leia a idade de uma pessoa expressa em dias e escreva-a expressa em anos, meses e dias.")
    
    const idade_dias = Number(input("Insira sua idade expresa em dias: "));
    
    const anos = Math.trunc(idade_dias / 365)
    const meses = Math.trunc((idade_dias % 365) / 30)
    const dias = Math.trunc((idade_dias % 365) % 30)
    
    print(`${idade_dias} dias equivalem a ${anos} ano(s), ${meses} mese(s) e ${dias} dia(s).`);
    
}
function q38() {
    // Leia 2 (duas) fra????es (numerador e denominador), calcule e escreva a soma destas fra????es, escrevendo o resultado em forma de fra????o.
    print("38. Leia 2 (duas) fra????es (numerador e denominador), calcule e escreva a soma destas fra????es, escrevendo o")
    print("resultado em forma de fra????o.")
    const numerador1 = Number(input("Insira o do numerador da primeira fra????o:  "));
    const denominador1 = Number(input("Insira o do denominador da primeira fra????o:"));
    print("");
    const numerador2 = Number(input("Insira o do numerador da segunda fra????o:   "));
    const denominador2 = Number(input("Insira o do denominador da segunda fra????o: "));
    
    const num_result = (numerador1 * denominador2) + (numerador2 * denominador1)
    const den_result = denominador1 * denominador2
    
    print(`A soma das fra????es ??: ${num_result}/${den_result}`);
    
}
function q39() {
    print("39. Leia tr??s n??meros inteiros e positivos (A, B, C) e calcule a seguinte express??o:")
    // Leia tr??s n??meros inteiros e positivos (A, B, C) e calcule a seguinte express??o:
    // D = ( R + S ) / 2
    // onde:
    // R = (A + B)??
    // S = (B + C)??
    const num1 = Number(input("Insira o primeiro n??mero: "));
    const num2 = Number(input("Insira o sagundo n??mero:  "));
    const num3 = Number(input("Insira o terceiro n??mero: "));
    
    const R = (num1 + num2) ** 2
    const S = (num2 + num3) ** 2
    
    const D = (R + S) / 2
    
    print(`O resultado da express??o ( (A + B)?? + (B + C)?? ) / 2 ?? ${D}`);
    
}
function q40() {
    // Calcule a quantidade de dinheiro gasta por um fumante. Dados de entrada: o n??mero de anos que ele
    // fuma, o no de cigarros fumados por dia e o pre??o de uma carteira (1 carteira tem 20 cigarros).
    print("40. Calcule a quantidade de dinheiro gasta por um fumante. Dados de entrada: o n??mero de anos que ele")
    print("fuma, o no de cigarros fumados por dia e o pre??o de uma carteira (1 carteira tem 20 cigarros).")
    
    const anos = Number(input("Quantos anos voc?? fuma: "));
    const cingaro = Number(input("Cigarros que fuma por dia: "));
    const preco = Number(input("Pre??o de uma carteira: "))
    
    const valor = (cingaro / 20) * 365 * anos * preco
    
    print(`Valor gasto com cancer: R$ ${valor}`);
}
function q41() {
    print("41. O custo ao consumidor de um carro novo ?? a soma do custo de f??brica com a percentagem do")
    print("distribuidor e dos impostos (aplicados ao custo de f??brica). Supondo que a percentagem do distribuidor")
    print("seja de 28% e os impostos de 45%, escreva um algoritmo que leia o custo de f??brica de um carro e")
    print("escreva o custo ao consumidor.")
    // O custo ao consumidor de um carro novo ?? a soma do custo de f??brica com a percentagem do
    // distribuidor e dos impostos (aplicados ao custo de f??brica). Supondo que a percentagem do distribuidor
    // seja de 28% e os impostos de 45%, escreva um algoritmo que leia o custo de f??brica de um carro e
    // escreva o custo ao consumidor.
    const percent_distr = 28 / 100
    const percent_impos = 45 / 100
    
    const custo = Number(input("O custo de f??brica do carro: R$"))
    
    const valor = custo + (custo * percent_distr) + (custo * percent_impos)
    
    print(`O valor do carro ao cosumidor: R$ ${valor}`);
}
function q42() {
    print("42. Escreva um algoritmo que, tendo como dados de entrada 2 pontos quaisquer no plano, ponto1 (x1,y1) e")
    print("ponto2 (x2,y2), escreva a dist??ncia entre eles, conforme f??rmula abaixo.")
    // Escreva um algoritmo que, tendo como dados de entrada 2 pontos quaisquer no plano, ponto1 (x1,y1) e
    // ponto2 (x2,y2), escreva a dist??ncia entre eles, conforme f??rmula abaixo.
    const X1 = Number(input("Insira o x do primeiro ponto: "));
    const Y1 = Number(input("Insira o y do primeiro ponto: "));
    const X2 = Number(input("Insira o x do segundo ponto: "));
    const Y2 = Number(input("Insira o y do segundo ponto: "));
    //                   square root
    const distance = Math.sqrt((X2 - X1) ** 2 + (Y2 - Y1) ** 2)
    
    print(`Dist??ncia entre os pontos: ${distance}`);
}
function q43() {
    print("43. Um sistema de equa????es lineares do tipo , pode ser resolvido segundo mostrado abaixo")
    print("Escreva um algoritmo que leia os coeficientes a, b, c, d, e e f, calcule e escreva os valores de x e y.")
    // Um sistema de equa????es lineares do tipo abaixo:
    // ax + by = c
    // dx + ey = f
    // pode ser resolvido segundo mostrado abaixo
    // x = ( ce - bf ) / ( ae - bd )
    // y = ( af - cd ) / ( ae - bd )
    // Escreva um algoritmo que leia os coeficientes a, b, c, d, e e f, calcule e escreva os valores de x e y.
    const num_a = Number(input("Insira o coeficiente a: "));
    const num_b = Number(input("Insira o coeficiente b: "));
    const num_c = Number(input("Insira o coeficiente c: "));
    const num_d = Number(input("Insira o coeficiente d: "));
    const num_e = Number(input("Insira o coeficiente e: "));
    const num_f = Number(input("Insira o coeficiente f: "));
    
    const X = (num_c * num_e - num_b * num_f) / (num_a * num_e - num_b * num_d)
    const Y = (num_a * num_f - num_c * num_d) / (num_a * num_e - num_b * num_d)
    
    print("Seguindo as seguintes express??es:")
    print("x = ( ce - bf ) / ( ae - bd )")
    print("y = ( af - cd ) / ( ae - bd )")
    print(`os valores de x e y s??o, respectivamente: ${X}, ${Y}`);
}
function q44() {
    print("44. Sabendo que lat??o ?? constitu??do de 70% de cobre e 30% de zinco, escreva um algoritmo que calcule a")
    print("quantidade de cada um desses componentes para se obter certa quantidade de lat??o (em kg), informada")
    print("pelo usu??rio.")
    // Sabendo que lat??o ?? constitu??do de 70% de cobre e 30% de zinco, escreva um algoritmo que calcule a
    // quantidade de cada um desses componentes para se obter certa quantidade de lat??o (em kg), informada
    // pelo usu??rio.
    
    const latao = Number(input("Quantidade de lat??o (kg): "));
    
    const cobre = latao * (70 / 100)
    const zinco = latao * (30 / 100)
    
    print(`${latao}kg de lat??o corresponde a ${cobre}% de cobre e ${zinco}`);
}
function q45() {
    print("45. Um algoritmo para gerenciar os saques de um caixa eletr??nico deve possuir algum mecanismo para")
    print("decidir o numero de notas de cada valor que deve ser disponibilizado para o cliente que realizou o")
    print("saque. Um poss??vel crit??rio seria o da 'distribui????o ??tima' no sentido de que as notas de menor valor")
    print("dispon??veis fossem distribu??das em n??mero m??nimo poss??vel. Por exemplo, se a maquina s?? disp??e de")
    print("notas de R$ 50, de R$ 10, de R$ 5 e de R$ 1, para uma quantia solicitada de R$ 87, o algoritmo deveria")
    print("indicar uma nota de R$ 50, tr??s notas de R$ 10, uma nota de R$ 5 e duas notas de R$ 1. Escreva um")
    print("algoritmo que receba o valor da quantia solicitada e retorne a distribui????o das notas de acordo com o")
    print("crit??rio da distribui????o ??tima.")
    // Um algoritmo para gerenciar os saques de um caixa eletr??nico deve possuir algum mecanismo para decidir o numero de notas de cada valor que deve ser disponibilizado para o cliente que realizou o
    // saque. Um poss??vel crit??rio seria o da "distribui????o ??tima" no sentido de que as notas de menor valor dispon??veis fossem distribu??das em n??mero m??nimo poss??vel. Por exemplo, se a maquina s?? disp??e de
    // notas de R$ 50, de R$ 10, de R$ 5 e de R$ 1, para uma quantia solicitada de R$ 87, o algoritmo deveria indicar uma nota de R$ 50, tr??s notas de R$ 10, uma nota de R$ 5 e duas notas de R$ 1. Escreva um
    // algoritmo que receba o valor da quantia solicitada e retorne a distribui????o das notas de acordo com o crit??rio da distribui????o ??tima.
    const saque = Number(input("Valor de saque: R$ "));
    
    let valorRestante = saque;
    
    // Math.trunc() remove a parte fracionada de um numero
    // Ex.: 
    // > Math.trunc(2.2)
    // > 2
    const numNotas100 = Math.trunc(valorRestante / 100);
    
    // Utiliza o resto da divis??o para determinar o valor restante.
    // Ex.: 
    // > 25 % 20
    // > 5
    //   ^ RESTO
    valorRestante = valorRestante % 100;
    
    // Repete o processo para cada nota na ordem de prioridade desejada
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
    
    // sempre igual a 0
    valorRestante = valorRestante % 1;
}
function q46() {
    print("46. Uma loja vende seus produtos no sistema entrada mais duas presta????es, sendo a entrada maior ou igual a")
    print("cada uma das duas presta????es; estas devem ser iguais, inteiras e as maiores poss??veis. Por exemplo, se o")
    print("valor da mercadoria for R$ 270,00, a entrada e as duas presta????es s??o iguais a R$ 90,00; se o valor da")
    print("mercadoria for R$ 302,00, a entrada ?? de R$ 102,00 e as duas presta????es s??o iguais a R$ 100,00.")
    print("Escreva um algoritmo que receba o valor da mercadoria e forne??a o valor da entrada e das duas")
    print("presta????es, de acordo com as regras acima.")

    const valor = Number(input("O valor do produto: "));

    const valor_prestacao = Math.trunc(valor / 3)
    const valor_entrada = valor - valor_prestacao * 2

    print(`Valor de entrada: ${valor_entrada}`);
    print(`Valor de cada presta????o: ${valor_prestacao}`);
}