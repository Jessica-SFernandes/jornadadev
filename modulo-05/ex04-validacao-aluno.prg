PROCEDURE Main()
    LOCAL cNome := ""
    LOCAL cDisc := ""
    LOCAL cNota1 := ""
    LOCAL cNota2 := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0

    WHILE .T.
        ACCEPT "Digite o nome do aluno: " TO cNome
        IF Len(Trim(cNome)) > 0
            EXIT
        ENDIF
        QOut("Erro: O nome não pode ser vazio!")
    ENDDO

    WHILE .T.
        ACCEPT "Digite a disciplina (ex: MAT, POR): " TO cDisc
        IF Len(Trim(cDisc)) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
        ENDIF
        QOut("Erro: A disciplina precisa conter 3 letras maiúsculas!")
    ENDDO

    WHILE .T.
        ACCEPT "Digite a Nota 1 (0 a 10): " TO cNota1
        nNota1 := Val(cNota1)
        IF nNota1 >= 0 .AND. nNota1 <= 10 .AND. Len(Trim(cNota1)) > 0
            EXIT
        ENDIF
        QOut("Erro: A Nota 1 deve estar entre 0 e 10!")
    ENDDO

    WHILE .T.
        ACCEPT "Digite a Nota 2 (0 a 10): " TO cNota2
        nNota2 := Val(cNota2)
        IF nNota2 >= 0 .AND. nNota2 <= 10 .AND. Len(Trim(cNota2)) > 0
            EXIT
        ENDIF
        QOut("Erro: A Nota 2 deve estar entre 0 e 10!")
    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    QOut("")
    QOut("--- DADOS DO ALUNO ---")
    QOut("Nome: " + cNome)
    QOut("Disciplina: " + cDisc)
    QOut("Nota 1: " + AllTrim(Str(nNota1, 5, 2)))
    QOut("Nota 2: " + AllTrim(Str(nNota2, 5, 2)))
    QOut("Média: " + AllTrim(Str(nMedia, 5, 2)))

RETURN