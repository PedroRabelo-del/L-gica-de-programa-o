programa
{
  funcao inicio()
  {
    // 1. Variaveis de Vida
    inteiro meuSangue = 100
    inteiro sangueMonstro = 100
   
    // 2. Quantidade de Itens (Os 4 que o professor pediu)
    inteiro item1 = 2 // Pocao
    inteiro item2 = 2 // Energetico
    inteiro item3 = 1 // Bomba
    inteiro item4 = 1 // Escudo
   
    inteiro botao // Variavel para ler o teclado
 
    escreva("--- JOGO DE LUTA ---\n")
 
    // Repete o jogo enquanto os dois estiverem vivos
    enquanto (meuSangue > 0 e sangueMonstro > 0)
    {
      escreva("\nSeu Sangue: ", meuSangue, " | Sangue do Monstro: ", sangueMonstro, "\n")
      escreva("Escolha o que fazer:\n")
      escreva("1- Chutar (Tira 20 do monstro)\n")
      escreva("2- Defender (Ganha 20 de sangue)\n")
      escreva("3- Usar Pocao (Restam: ", item1, ")\n")
      escreva("4- Usar Energetico (Restam: ", item2, ")\n")
      escreva("5- Usar Bomba (Restam: ", item3, ")\n")
      escreva("6- Usar Escudo (Restam: ", item4, ")\n")
      leia(botao)
 
      // Regras das Escolhas
      se (botao == 1) {
        sangueMonstro = sangueMonstro - 20
        escreva("💥 Voce chutou o monstro!\n")
      }
      se (botao == 2) {
        meuSangue = meuSangue + 20
        escreva("🛡️ Voce se defendeu!\n")
      }
      se (botao == 3) {
        se (item1 > 0) {
          item1 = item1 - 1
          meuSangue = meuSangue + 30
          escreva("❤️ Usou Pocao!\n")
        } senao { escreva("❌ Acabou!\n") }
      }
      se (botao == 4) {
        se (item2 > 0) {
          item2 = item2 - 1
          meuSangue = meuSangue + 15
          escreva("⚡ Usou Energetico!\n")
        } senao { escreva("❌ Acabou!\n") }
      }
      se (botao == 5) {
        se (item3 > 0) {
          item3 = item3 - 1
          sangueMonstro = sangueMonstro - 40
          escreva("💣 Usou Bomba!\n")
        } senao { escreva("❌ Acabou!\n") }
      }
      se (botao == 6) {
        se (item4 > 0) {
          item4 = item4 - 1
          meuSangue = meuSangue + 10
          escreva("🛡️ Usou Escudo!\n")
        } senao { escreva("❌ Acabou!\n") }
      }
 
      // Turno do Monstro (Se ele nao morreu, ele bate)
      se (sangueMonstro > 0) {
        meuSangue = meuSangue - 20
        escreva("👹 O monstro te bateu!\n")
      }
    }
 
    // Tela Final
    escreva("\n--- FIM DO JOGO ---\n")
    se (sangueMonstro <= 0) {
      escreva("🎉 Voce Venceu!\n")
    }
    senao {
      escreva("💀 Voce Perdeu!\n")
    }
  }
}
 