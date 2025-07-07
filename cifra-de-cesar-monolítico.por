programa {

  inclua biblioteca Util
  inclua biblioteca Texto
  inclua biblioteca Tipos 

  funcao inicio() {

    caracter alfabeto[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}

    cadeia texto = "ana"
    inteiro chave_de_criptografia = 2

    inteiro numero_letras_texto = Texto.numero_caracteres(texto) // Para alocação de espaço igual ao número de caracteres do texto

    caracter texto_cifrado[numero_letras_texto]

    caracter letras_do_texto[numero_letras_texto] // Vetor para as letras da palavra
    caracter letra

    // Laço de repetição para percorrer letra por letra do texto, colocando cada palavra na coleção/conjunto letras_do_texto
    para(inteiro indice = 0; indice < Texto.numero_caracteres(texto); indice++) {
      caracter letra = Texto.obter_caracter(texto, indice)
      letras_do_texto[indice] = letra
    }

    // Laço de repetição percorrendo a coleção de letras presente no texto
    para(inteiro i = 0; i < Util.numero_elementos(letras_do_texto); i++) {

      caracter letra = letras_do_texto[i]

      // Laço de repetição percorrendo e comparando se a letra do texto é igual a letra do alfabeto e em caso de encontrá-la, reposicionar a letra usando a chave
      para (inteiro j = 0; j < Util.numero_elementos(alfabeto); j++){

        se(letra == alfabeto[j]){

          inteiro letra_indice_reposicao = j + (chave_de_criptografia - 1)
          letra_indice_reposicao = letra_indice_reposicao % Util.numero_elementos(alfabeto) 
          texto_cifrado[i] = alfabeto[letra_indice_reposicao]

        }

      }
    }

    escreva("\n" + texto_cifrado)

  }
}
