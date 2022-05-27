import 'dart:io';

void main()
{
    var X = int.parse(stdin.readLineSync()?? "");
    var Y = int.parse(stdin.readLineSync()?? "");

    var maior = (X > Y) ? X : Y;
    var menor = (X < Y) ? X : Y;

    num total = 0;

    while (menor<=maior) {
        if(!(menor % 13 == 0)) total += menor;
        menor++;
    }

    print(total);
}