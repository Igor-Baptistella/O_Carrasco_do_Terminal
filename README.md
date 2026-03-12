Atividade proposta para a disciplina de Programação para Dispositivos Móveis II pelo professor Elias Carneiro de Oliveira na FATEC Osasco.

O Desafio:
O programa deve escolher uma palavra secreta de uma lista pré-definida e permitir que o
jogador tente adivinhá-la letra por letra. O jogador tem um número limitado de tentativas
antes de perder o jogo.

Requisitos Técnicos
Para que o exercício seja considerado concluído, seu código deve:
Lista de Palavras: Criar uma List<String> com pelo menos 5 palavras diferentes.
Sorteio: Utilizar a classe Random para selecionar uma palavra da lista toda vez que o jogo iniciar.
Interface no Terminal: * Exibir a palavra oculta usando underscores (ex: _ _ _ _).
Mostrar as letras que o jogador já tentou e errou.
Exibir a quantidade de "vidas" restantes.
Lógica de Entrada:
Ler a entrada do usuário via terminal (stdin.readLineSync()).
Validar se o usuário digitou apenas uma letra por vez.
Ignorar a diferença entre maiúsculas e minúsculas (Case Insensitive).
Condições de Parada: O jogo termina quando o jogador adivinhar todas as letras
(Vitória) ou esgotar suas tentativas (Derrota).
Exemplo de Fluxo de Saída

Palavra: _ A _ _ A
Erros: [X, Z, P]
Tentativas restantes: 3
Digite uma letra:

💡 Dicas Extras (Para subir de nível)
1.​ Tratamento de Erros: Não desconte vida se o jogador digitar uma letra que ele já
tentou anteriormente.
2.​ Arte em ASCII: Tente desenhar a forca no terminal conforme o jogador erra as
letras.
3.​ Dica: Adicione uma funcionalidade onde, se o jogador souber a palavra, ele possa
tentar "chutar" o termo completo de uma vez (correndo o risco de perder o jogo se
errar).

Enviar o arquivo pelo formulário

A entrega irá corresponder a presença na aula de reposição que ocorre em 07/03/26 e a nota será computado em NP1
