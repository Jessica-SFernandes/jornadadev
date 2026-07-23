SET PROCEDURE TO estoque_lib.prg


FUNCTION Main()

    LOCAL aEstoque := {}
    LOCAL cOpcao


    DO WHILE .T.


        QOut("")
        QOut("===== CONTROLE DE ESTOQUE =====")
        QOut("1 - Cadastrar produto")
        QOut("2 - Listar produtos")
        QOut("3 - Entrada de estoque")
        QOut("4 - Saida de estoque")
        QOut("5 - Buscar produto")
        QOut("6 - Relatorio")
        QOut("0 - Sair")


        ACCEPT "Opcao: " TO cOpcao


        DO CASE


            CASE cOpcao == "1"

                CadastrarProduto(aEstoque)


            CASE cOpcao == "2"

                ListarProdutos(aEstoque)


            CASE cOpcao == "3"

                EntradaEstoque(aEstoque)


            CASE cOpcao == "4"

                SaidaEstoque(aEstoque)


            CASE cOpcao == "5"

                BuscarMenu(aEstoque)


            CASE cOpcao == "6"

                RelatorioEstoque(aEstoque)


            CASE cOpcao == "0"

                EXIT


            OTHERWISE

                QOut("Opcao invalida!")


        ENDCASE


    ENDDO


RETURN NIL



FUNCTION BuscarMenu(aEstoque)

    LOCAL cCodigo
    LOCAL nPos


    ACCEPT "Codigo para buscar: " TO cCodigo


    nPos := BuscarProduto(aEstoque, cCodigo)


    IF nPos > 0

        QOut("Produto encontrado:")
        QOut(aEstoque[nPos][2])

    ELSE

        QOut("Produto nao encontrado!")

    ENDIF


RETURN NIL