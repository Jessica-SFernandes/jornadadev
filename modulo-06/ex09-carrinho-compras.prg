FUNCTION Main()

    LOCAL aCarrinho := {}
    LOCAL cNome
    LOCAL cPreco
    LOCAL nPreco
    LOCAL cResposta
    LOCAL nI
    LOCAL nTotal := 0

    DO WHILE .T.

        ACCEPT "Digite o nome do produto (ou FIM para encerrar): " TO cNome

        IF Upper(cNome) == "FIM"
            EXIT
        ENDIF


        ACCEPT "Digite o preco: " TO cPreco

        nPreco := Val(cPreco)

        AADD(aCarrinho, {cNome, nPreco})


        ACCEPT "Deseja adicionar outro produto? (S/N): " TO cResposta

        IF Upper(cResposta) == "N"
            EXIT
        ENDIF

    ENDDO

    QOut("")
    QOut("LISTA DE PRODUTOS:")

    FOR nI := 1 TO Len(aCarrinho)

        QOut(aCarrinho[nI][1] + " - R$ " + ;
             Str(aCarrinho[nI][2], 8, 2))

        nTotal += aCarrinho[nI][2]

    NEXT


    QOut("")
    QOut("Total da compra: R$ " + Str(nTotal, 8, 2))


RETURN NIL