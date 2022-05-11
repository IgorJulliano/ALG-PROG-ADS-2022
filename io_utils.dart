import 'dart:io';

String input(String? output){
  stdout.write(output);
  return stdin.readLineSync()?? "";
}

void clear() {
    Process.start('cls', [], runInShell: true).then((process) {
        stdout.addStream(process.stdout);
        stderr.addStream(process.stderr);
    });
}

String loadFile(String s) {
  return new File(s).readAsStringSync();
}

num inputNumber(String? output){
  var inp = input(output);
  
  var number = int.tryParse(inp)?? double.tryParse(inp);

  while(number == null){
    print("Insira um número!");
    number = inputNumber(output);
  }
  
  return number;
}