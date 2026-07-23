FUNCTION CadastrarProduto(aEstoque)

    LOCAL cCodigo
    LOCAL cNome
    LOCAL cQtd
    LOCAL cPreco


    ACCEPT "Codigo do produto: " TO cCodigo

    IF Empty(cCodigo)
        QOut("Codigo invalido!")
        RETURN .F.
    ENDIF

    IF BuscarProduto(aEstoque, cCodigo) > 0

        QOut("Produto ja cadastrado!")

        RETURN .F.

    ENDIF


    ACCEPT "Nome do produto: " TO cNome

    IF Empty(cNome)

        QOut("Nome invalido!")

        RETURN .F.

    ENDIF


    ACCEPT "Quantidade: " TO cQtd
    ACCEPT "Preco unitario: " TO cPreco


    AADD(aEstoque, {cCodigo, cNome, Val(cQtd), Val(cPreco)})


    QOut("Produto cadastrado!")

RETURN .T.



FUNCTION ListarProdutos(aEstoque)

    LOCAL nI


    IF Len(aEstoque) == 0

        QOut("Estoque vazio!")

        RETURN NIL

    ENDIF


    FOR nI := 1 TO Len(aEstoque)


        QOut("Codigo: " + aEstoque[nI][1])
        QOut("Nome: " + aEstoque[nI][2])
        QOut("Quantidade: " + Str(aEstoque[nI][3]))
        QOut("Preco: R$ " + Str(aEstoque[nI][4],8,2))
        QOut("--------------------")


    NEXT


RETURN NIL



FUNCTION EntradaEstoque(aEstoque)

    LOCAL cCodigo
    LOCAL cQtd
    LOCAL nPos


    ACCEPT "Codigo do produto: " TO cCodigo


    nPos := BuscarProduto(aEstoque, cCodigo)


    IF nPos == 0

        QOut("Produto nao encontrado!")

        RETURN .F.

    ENDIF


    ACCEPT "Quantidade de entrada: " TO cQtd


    aEstoque[nPos][3] += Val(cQtd)


    QOut("Estoque atualizado!")


RETURN .T.



FUNCTION SaidaEstoque(aEstoque)

    LOCAL cCodigo
    LOCAL cQtd
    LOCAL nPos
    LOCAL nQuantidade


    ACCEPT "Codigo do produto: " TO cCodigo


    nPos := BuscarProduto(aEstoque, cCodigo)


    IF nPos == 0

        QOut("Produto nao encontrado!")

        RETURN .F.

    ENDIF


    ACCEPT "Quantidade de saida: " TO cQtd


    nQuantidade := Val(cQtd)


    IF nQuantidade > aEstoque[nPos][3]

        QOut("Estoque insuficiente!")

        RETURN .F.

    ENDIF


    aEstoque[nPos][3] -= nQuantidade


    QOut("Saida realizada!")


RETURN .T.



FUNCTION BuscarProduto(aEstoque, cCodigo)

    LOCAL nI


    FOR nI := 1 TO Len(aEstoque)


        IF aEstoque[nI][1] == cCodigo

            RETURN nI

        ENDIF


    NEXT


RETURN 0



FUNCTION RelatorioEstoque(aEstoque)

    LOCAL nI
    LOCAL nValor
    LOCAL nTotal := 0


    FOR nI := 1 TO Len(aEstoque)


        nValor := aEstoque[nI][3] * aEstoque[nI][4]


        QOut(aEstoque[nI][2] + ;
             " - Valor em estoque: R$ " + ;
             Str(nValor,10,2))


        nTotal += nValor


    NEXT


    QOut("--------------------")
    QOut("Total geral: R$ " + Str(nTotal,10,2))


RETURN NIL