// Leia 1 numero entre 0 e 100,verifique se o numero é ou não primo

import "../io_utils.dart";

void main() {
  var number = int.parse(input("Insira um numero de 0 a 100: "));

  if (isPrime(number))
    print("$number é primo");
  else
    print("$number não é primo");
}

bool isPrime(int number) {
  if (number < 2)
    return false;
  else if (number == 2)
    return true;
  else if (number > 3 & number % 3 == 0)
    return false;
  else if (number > 5 & number % 5 == 0)
    return false;
  else if (number > 7 & number % 7 == 0)
    return false;
  else
    return true;
}


// #include <stdio.h>
// int main()
// {
//   // variaveis
//   int mernum = 1000;
//   int x = 0, cont, v[num];

//   // rodar 'for' para todos os nuos
//   for (int i = 2; i <= num; i++)
//   {
//     cont = 0;
//     // para cada numero, conferir se tem divisores alem do 1.
//     for (int j = 2; j <= i / 2; j++)
//     {
//       if (i % j == 0)
//       {
//         cont++;
//         break;  // parar loop pois apenas 1 divisor encontrado ja invalida o numero para ser primo
//       }
//     }

//     if (cont == 0)
//     {
//       printf("%d e numero primo\n", i);
//       v[x] = i;
//       x++;    // contador
//     }
//   }
//   // printar resultados
//   printf("\n");
//   printf("Quantidade de numeros: %d\n", x);
//   printf("Menor numero primo: %d\n", v[0]);
//   printf("Maior numero primo: %d\n", v[x - 1]);
// }