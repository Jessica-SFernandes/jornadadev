PROCEDURE Main()
    LOCAL cNum1 := "", cNum2 := "", cOperacao := ""
    LOCAL nNum1 := 0, nNum2 := 0, nResultado := 0

    ACCEPT "Digite o primeiro número: " TO cNum1
    ACCEPT "Digite a operação (+, -, *, /, ^, R): " TO cOperacao

    nNum1 := Val(cNum1)
    cOperacao := Upper(cOperacao)

    DO CASE

        CASE cOperacao == "+"
            ACCEPT "Digite o segundo número: " TO cNum2
            nNum2 := Val(cNum2)
            nResultado := nNum1 + nNum2
            QOut("Resultado:", Str(nResultado))

        CASE cOperacao == "-"
            ACCEPT "Digite o segundo número: " TO cNum2
            nNum2 := Val(cNum2)
            nResultado := nNum1 - nNum2
            QOut("Resultado:", Str(nResultado))

        CASE cOperacao == "*"
            ACCEPT "Digite o segundo número: " TO cNum2
            nNum2 := Val(cNum2)
            nResultado := nNum1 * nNum2
            QOut("Resultado:", Str(nResultado))

        CASE cOperacao == "/"
            ACCEPT "Digite o segundo número: " TO cNum2
            nNum2 := Val(cNum2)
            
        IF nNum2 == 0 
            QOut("Erro: Divisão por zero não é permitida.")
        ELSE
            
            nResultado := nNum1 / nNum2
            QOut("Resultado:", Str(nResultado))

        ENDIF

        CASE cOperacao == "^"
            ACCEPT "Digite o expoente: " TO cNum2
            nNum2 := Val(cNum2)
            nResultado := nNum1 ^ nNum2
            QOut("Resultado:", Str(nResultado))

        CASE cOperacao == "R"
            nResultado := Sqrt(nNum1)
            QOut("Raiz quadrada:", Str(nResultado))

        OTHERWISE
            QOut("Operação inválida. Por favor, insira uma operação válida (+, -, *, /, ^, R).")
    ENDCASE

RETURN


