import 'dart:math';

import '../../io_utils.dart';

void main() {
  var vetorBin = List.generate(
    8,
    (index) => getNumberOnRange("Insira um digito binário (0,1) -> ", 0, 1),
  );

  var binario = vetorBin.join("");

  var decimal = binToDecimal(binario);
  var hexdecimal = binToHex(binario);

  print("bin: $binario");
  print("dec: $decimal");
  print("hex: $hexdecimal");
}

int binToDecimal(String bin) {
  var vetorBin = bin.split("");

  var tamanho = vetorBin.length;
  int binDigit;
  num dec = 0;

  for (var i = 0; i < tamanho; i++) {
    binDigit = int.parse(vetorBin[i]);
    dec += pow(2, tamanho - 1 - i) * binDigit;
  }

  return dec.toInt();
}

String binToHex(String bin) {
  bin = bin.padLeft((bin.length % 4) + bin.length, "0");
  var vetorBin = bin.split("");
  var tamanho = vetorBin.length;

  var dec = 0;
  var hex = "";

  for (var i = 0; i < tamanho / 4; i++) {
    dec = binToDecimal(vetorBin.sublist(i * 4, i * 4 + 4).join(""));
    hex += decToHexChar(dec);
  }
  return hex;
}

String decToHexChar(int decimal) {
  assert(decimal >= 0 && decimal < 16);
  var hex = "";

  if (decimal < 10) {
    return decimal.toString();
  } else {
    return String.fromCharCode(decimal + 55);
  }
}
