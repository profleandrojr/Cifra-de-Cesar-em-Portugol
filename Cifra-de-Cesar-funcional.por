programa {

  inclua biblioteca Texto --> txt
  inclua biblioteca Util
  inclua biblioteca Tipos

  funcao inicio() {

    cadeia test = criptografa("ana", 3)
    escreva(test)
    
  }

  funcao cadeia criptografa(cadeia palavra, inteiro deslocamento){

    cadeia palavra_criptografada

    caracter alfabeto[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}

    inteiro numero_letras_palavra = txt.numero_caracteres(palavra)

    caracter palavra_cifrada[numero_letras_palavra]

    caracter letras_da_palavra[numero_letras_palavra]
    caracter letra

    para(inteiro i = 0; i < numero_letras_palavra; i++){
      letra = txt.obter_caracter(palavra, i)
      letras_da_palavra[i] = letra
    }

    para(inteiro i = 0; i < Util.numero_elementos(letras_da_palavra); i++){

      letra = letras_da_palavra[i]

      para(inteiro j = 0; j < Util.numero_elementos(alfabeto); j++) {

        se(letra == alfabeto[j]){
          
          inteiro indice_letra_deslocada = j + (deslocamento - 1)
          indice_letra_deslocada = indice_letra_deslocada % Util.numero_elementos(alfabeto)
          palavra_cifrada[i] = alfabeto[indice_letra_deslocada]
        }

      }

    } 

    para(inteiro i = 0; i < Util.numero_elementos(palavra_cifrada); i++){
      palavra_criptografada += palavra_cifrada[i]
    }

    
    retorne palavra_criptografada

  }

}
