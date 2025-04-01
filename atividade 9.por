programa{
    inclua biblioteca Texto
    inclua biblioteca Util

    const inteiro quant = 25  // Tamanho máximo da fila
    cadeia paciente[quant]  // Vetor que armazena os nomes dos pacientes
    inteiro ponteiro = 0  // Índice para o próximo paciente na fila
    caracter opcao

    funcao inicio()
    {
        limpa()
        escreva("..........................................\n")
        escreva("            Fila de Hospital                \n")
        escreva("..........................................\n\n")

        enquanto (verdadeiro)
        {
            escreva("1 - Cadastrar novo paciente na fila\n")
            escreva("2 - Remover paciente da fila\n")
            escreva("3 - Limpar fila de pacientes\n")
            escreva("4 - Listar pacientes na fila\n")
            escreva("5 - Verificar se fila está vazia\n\n")
            escreva("6 - Sair\n\n")

            escreva("Escolha a opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso '1':
                    {
                        cadastrar()
                    }
                caso '2':
                    {
                        remover()
                    }
                caso '3':
                    {
                        limpar()
                    }
                caso '4':
                    {
                        listar()
                    }
                caso '5':
                    {
                        vazia()
                    }
                caso '6':
                    {
                        escreva("Saindo do programa...\n")
                        pare
                    }
                caso contrario:
                    {
                        escreva("Opção inválida!\n")
                        Util.aguarde(1000)
                    }
            }
        }
    }

    funcao cadastrar()
    {
        limpa()
        escreva("..........................\n")
        escreva("Adicionando novo paciente na fila\n")
        escreva("..........................\n\n")

        se(ponteiro < quant)
        {
            escreva("Informe o nome do paciente: \n")
            leia(paciente[ponteiro])
            ponteiro++  // Incrementa o ponteiro para o próximo paciente
            escreva("Registro realizado com sucesso!\n")
            Util.aguarde(1000)
        }
        senao
        {
            escreva("Não é possível cadastrar novos pacientes. A fila está cheia!\n")
            Util.aguarde(2000)
        }
    }

    funcao remover()
    {
        limpa()
        escreva("..........................\n")
        escreva("Removendo paciente da fila\n")
        escreva("..........................\n\n")

        se(ponteiro == 0)
        {
            escreva("A fila está vazia. Não há pacientes para remover!\n")
        }
        senao
        {
            escreva("Informe o nome do paciente a ser removido: \n")
            cadeia nome_remover
            leia(nome_remover)

            // Busca pelo nome do paciente e remove
            inteiro i, encontrado = 0
            para(i = 0; i < ponteiro; i++)
            {
                se(paciente[i] == nome_remover)
                {
                    // Remove o paciente (substitui por uma string vazia)
                    paciente[i] = ""  
                    // Desloca todos os pacientes seguintes para a frente
                    inteiro j
                    para(j = i; j < ponteiro - 1; j++)
                    {
                        paciente[j] = paciente[j + 1]
                    }
                    ponteiro--  // Diminui o ponteiro
                    escreva("Paciente removido com sucesso!\n")
                    encontrado = 1
                    pare
                }
            }
            se(encontrado == 0)
            {
                escreva("Paciente não encontrado na fila!\n")
            }
        }
        Util.aguarde(1000)
    }

    funcao limpar()
    {
        limpa()
        escreva("..........................\n")
        escreva("Limpando a fila de pacientes\n")
        escreva("..........................\n\n")

        ponteiro = 0  // Reseta o ponteiro, limpando a fila
        escreva("Fila limpa com sucesso!\n")
        Util.aguarde(1000)
    }

    funcao listar()
    {
        limpa()
        escreva("..........................\n")
        escreva("Lista de pacientes na fila\n")
        escreva("..........................\n\n")

        se(ponteiro == 0)
        {
            escreva("A fila está vazia!\n")
        }
        senao
        {
            inteiro i
            para(i = 0; i < ponteiro; i++)
            {
                escreva(i + 1, " - ", paciente[i], "\n")  // Lista os pacientes com seus índices
            }
        }
        Util.aguarde(1000)
    }

    funcao vazia()
    {
        limpa()
        escreva("..........................\n")
        escreva("Verificando se a fila está vazia\n")
        escreva("..........................\n\n")

        se(ponteiro == 0)
        {
            escreva("A fila está vazia!\n")
        }
        senao
        {
            escreva("A fila contém pacientes!\n")
        }
        Util.aguarde(1000)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 37; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */