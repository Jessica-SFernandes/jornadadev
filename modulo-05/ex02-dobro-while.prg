PROCEDURE Main()
    LOCAL nValor := 0
    LOCAL cInput := ""

    WHILE .T. 
        ACCEPT "Digite um número inteiro (zero ou negativo para sair): " TO cInput
        nValor := VAL(cInput)

        IF nValor <= 0
            EXIT
        ENDIF

        QOut("O dobro de " + AllTrim(Str(nValor)) + " é " + AllTrim(Str(nValor * 2)))

    ENDDO

    QOut("Programa encerrado.")

RETURN