PROCEDURE Main()
    LOCAL cIdade := "", cDependentes := ""
    LOCAL nIdade := 0, nDependentes := 0
    LOCAL nValorBase := 0, nValorTotal := 0

    ACCEPT "Digite a idade do titular: " TO cIdade
    ACCEPT "Digite o número de dependentes: " TO cDependentes

    nIdade := Val(cIdade)
    nDependentes := Val(cDependentes)

    IF nIdade < 25
        nValorBase := 180
    ELSEIF nIdade >= 26 .AND. nIdade <= 40
        nValorBase := 260
    ELSEIF nIdade >= 41 .AND. nIdade <= 60
        nValorBase := 380
    ELSE
        nValorBase := 520
    ENDIF

    nValorTotal := nValorBase + (nDependentes * 90)

    QOut("Valor mensal total do plano de saúde: R$ ", Str(nValorTotal, 10, 2))
RETURN