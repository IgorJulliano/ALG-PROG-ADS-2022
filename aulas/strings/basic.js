function main() {
    let texto = "Lenhadora de Bonsai";
    //          "Lenh#dor# de Bons#i"

    let novoTexto = "";

    for (let i = 0; i < texto.length; i++) {
        
        if(i % 2 == 0){
            novoTexto = texto[i] + novoTexto;
        } else{
            novoTexto = novoTexto + texto[i];
        }
        console.log("novo: ", i, novoTexto)
    }

    console.log("novo: ", novoTexto)

}


main();