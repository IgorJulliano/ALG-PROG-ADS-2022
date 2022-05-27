import { input } from "../../io_utils.js";


function main(){
    
    counter = 0;
    let num1;
    let num2;
    let num3;

    while (counter < linhas) {
        num1 = 1 + (counter * 4);
        num2 = 2 + (counter * 4);
        num3 = 3 + (counter * 4);

// output_msg += 1 2 3 PUM
// 


        console.log(num1, num2, num3, "PUM");

        counter++;
    }
    
}
main();