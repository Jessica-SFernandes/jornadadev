PROCEDURE Main()
    LOCAL cMes := ""
    LOCAL nMes := 0

    ACCEPT "Digite o número do mês (1 a 12): " TO cMes
    nMes := Val(cMes)

    IF nMes < 1 .OR. nMes > 12
        QOut("Número do mês inválido. Por favor, insira um número entre 1 e 12.")
    ELSE

    DO CASE
        CASE nMes == 1
            QOut("Janeiro")
        CASE nMes == 2
            QOut("Fevereiro")
        CASE nMes == 3
            QOut("Março")
        CASE nMes == 4
            QOut("Abril")
        CASE nMes == 5
            QOut("Maio")
        CASE nMes == 6
            QOut("Junho")
        CASE nMes == 7
            QOut("Julho")
        CASE nMes == 8
            QOut("Agosto")
        CASE nMes == 9
            QOut("Setembro")
        CASE nMes == 10
            QOut("Outubro")
        CASE nMes == 11
            QOut("Novembro")
        CASE nMes == 12
            QOut("Dezembro")
    ENDCASE

    ENDIF

RETURN