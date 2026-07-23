PROCEDURE Main()

    LOCAL aDias := {"Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"}
    LOCAL nDia := 0

    CLS

    QOut("=== DIAS DA SEMANA ===")

    ACCEPT "Digite um número de 1 a 7: " TO nDia

    nDia := Val(nDia)

    IF nDia >= 1 .AND. nDia <= 7

        QOut("O dia escolhido é: " + aDias[nDia])

    ELSE

        QOut("Número inválido! Digite um valor entre 1 e 7.")

    ENDIF

RETURN