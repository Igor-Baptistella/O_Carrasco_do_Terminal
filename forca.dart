import 'dart:io';
import 'dart:math';

void mostrarForca(int erros) {
  List<String> estagios = [
'''
 +---+
 |   |
     |
     |
     |
     |
=========
''',
'''
 +---+
 |   |
 O   |
     |
     |
     |
=========
''',
'''
 +---+
 |   |
 O   |
 |   |
     |
     |
=========
''',
'''
 +---+
 |   |
 O   |
/|   |
     |
     |
=========
''',
'''
 +---+
 |   |
 O   |
/|\\  |
     |
     |
=========
''',
'''
 +---+
 |   |
 O   |
/|\\  |
/    |
     |
=========
''',
'''
 +---+
 |   |
 O   |
/|\\  |
/ \\  |
     |
=========
'''
  ];

  print(estagios[erros]);
}

void main() {
  List<String> palavras = [
    "dart",
    "computador",
    "programacao",
    "teclado",
    "internet"
  ];

  Random random = Random();
  String palavraSecreta = palavras[random.nextInt(palavras.length)];

  int vidas = 6;
  int erros = 0;

  List<String> letrasCorretas = [];
  List<String> letrasErradas = [];

  print("=== JOGO DA FORCA ===");

  while (vidas > 0) {

    mostrarForca(erros);

    String palavraOculta = "";
    bool venceu = true;

    for (var letra in palavraSecreta.split("")) {
      if (letrasCorretas.contains(letra)) {
        palavraOculta += "$letra ";
      } else {
        palavraOculta += "_ ";
        venceu = false;
      }
    }

    print("Palavra: $palavraOculta");
    print("Erros: $letrasErradas");
    print("Tentativas restantes: $vidas");

    if (venceu) {
      print("\n🎉 Parabéns! Você acertou a palavra: $palavraSecreta");
      return;
    }

    stdout.write("Digite uma letra ou a palavra inteira: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Entrada inválida!");
      continue;
    }

    entrada = entrada.toLowerCase();

    if (entrada.length > 1) {
      if (entrada == palavraSecreta) {
        print("\n🎉 Você acertou a palavra completa: $palavraSecreta");
      } else {
        print("\n💀 Você errou! A palavra era: $palavraSecreta");
      }
      return;
    }

    String letra = entrada;

    if (letrasCorretas.contains(letra) || letrasErradas.contains(letra)) {
      print("⚠️ Você já tentou essa letra.");
      continue;
    }

    if (palavraSecreta.contains(letra)) {
      letrasCorretas.add(letra);
      print("✅ Boa! A letra '$letra' existe.");
    } else {
      letrasErradas.add(letra);
      vidas--;
      erros++;
      print("❌ Letra incorreta!");
    }
  }

  mostrarForca(erros);
  print("\n💀 Você perdeu! A palavra era: $palavraSecreta");
}