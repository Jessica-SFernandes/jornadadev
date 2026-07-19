PROCEDURE Main ()
    LOCAL cVal1 := ""
    LOCAL cVal2 := ""
    LOCAL nNum1 := 0
    LOCAL nNum2 := 0

    ACCEPT "Digite o primeiro número: " TO cVal1
    ACCEPT "Digite o segundo número: " TO cVal2

    nNum1 := Val(cVal1)
    nNum2 := Val(cVal2)

    IF nNum1 == nNum2
    QOut("Os dois números são iguais.")
    ELSE
        IF nNum1 > nNum2
            QOut("O maior número é: " + Str(nNum1))
            QOut("O menor número é: " + Str(nNum2))
        ELSE
            QOut("O maior número é: " + Str(nNum2))
            QOut("O menor número é: " + Str(nNum1))
        ENDIF
    ENDIF
RETURN
