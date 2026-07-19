PROCEDURE Main()
    LOCAL cSalario := ""
    LOCAL nSalarioAtual := 0
    LOCAL nNovoSalario := 0

    ACCEPT "Digite o salário atual do funcionário: R$" TO cSalario
    nSalarioAtual := Val(cSalario)

    IF nSalarioAtual < 0
        QOut("Salário inválido. Por favor, insira um valor positivo.")
    ELSE

        IF nSalarioAtual < 1000
            nNovoSalario := nSalarioAtual * 1.15

        ELSEIF nSalarioAtual <= 2000
            nNovoSalario := nSalarioAtual * 1.12

        ELSEIF nSalarioAtual <= 4000
            nNovoSalario := nSalarioAtual * 1.08

        ELSE

            nNovoSalario := nSalarioAtual * 1.05

        ENDIF

        QOut("O novo salário do funcionário é: R$" + Str(nNovoSalario, 10, 2))
    
    ENDIF

RETURN
