import 'dart:io';

String input(String? output){
  stdout.write(output);
  return stdin.readLineSync()?? "";
}