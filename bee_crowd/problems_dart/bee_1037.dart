import 'dart:io';

void main(List<String> args) {
  var input = double.parse(stdin.readLineSync()?? '');

// Intervalo [0,25],
// Intervalo (25,50],
// Intervalo (50,75],
// Intervalo (75,100]

  if (0 <= input && input <= 25) {
    print('Intervalo [0,25]');
  } else if (25 < input && input <= 50) {
    print('Intervalo (25,50]');
  } else if (50 < input && input <= 75) {
    print('Intervalo (50,75]');
  } else if (75 < input && input <= 100) {
    print('Intervalo (75,100]');
  } else
    print('Fora de intervalo');
}
