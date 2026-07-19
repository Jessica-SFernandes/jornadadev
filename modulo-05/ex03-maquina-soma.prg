PROCEDURE Main()
    LOCAL nValor := 0
    LOCAL nTotal := 0
    LOCAL nQtd := 0
    LOCAL cInput := ""

    WHILE .T.
        ACCEPT "Digite um valor para somar (0 para sair): " TO cInput
        nValor := Val(cInput)

        IF nValor == 0
            EXIT
        ENDIF

        nTotal := nTotal + nValor
        nQtd := nQtd + 1
    ENDDO

    QOut("---- Resultado Final ----")
    QOut("Total somado: " + AllTrim(Str(nTotal)))
    QOut("Quantidade de valores somados: " + AllTrim(Str(nQtd)))
RETURN