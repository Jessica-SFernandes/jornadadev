PROCEDURE Main()

    LOCAL nValor1
    LOCAL nValor2
    LOCAL cOperacao
    LOCAL nResultado
    LOCAL lSucesso

    nValor1 := LerNumero("Digite o primeiro número: ")
    nValor2 := LerNumero("Digite o segundo número: ")

    ACCEPT "Operação (+, -, *, /): " TO cOperacao

    lSucesso := Calcular(nValor1, nValor2, cOperacao, @nResultado)

    MostrarResultado(lSucesso, nResultado)

RETURN

FUNCTION LerNumero(cMensagem)

    LOCAL nNumero

    ACCEPT cMensagem TO nNumero

RETURN Val(nNumero)

FUNCTION Calcular(nValor1, nValor2, cOperacao, nResultado)

    DO CASE

    CASE cOperacao == "+"
        nResultado := nValor1 + nValor2

    CASE cOperacao == "-"
        nResultado := nValor1 - nValor2

    CASE cOperacao == "*"
        nResultado := nValor1 * nValor2

    CASE cOperacao == "/"
        IF nValor2 == 0
            RETURN .F.
        ENDIF
        nResultado := nValor1 / nValor2

    OTHERWISE
        RETURN .F.

    ENDCASE

RETURN .T.

FUNCTION MostrarResultado(lSucesso, nResultado)

    IF lSucesso
        QOut("Resultado: " + Str(nResultado))
    ELSE
        QOut("Erro: divisão por zero ou operação inválida.")
    ENDIF

RETURN NIL