FUNCTION Main()

    LOCAL aAlunos := {}
    LOCAL nQtd
    LOCAL nI
    LOCAL cNome
    LOCAL nN1
    LOCAL nN2
    LOCAL nN3
    LOCAL nN4
    LOCAL nMedia

    ACCEPT "Digite a quantidade de alunos: " TO nQtd
    nQtd := Val(nQtd)

    FOR nI := 1 TO nQtd

        ACCEPT "Nome do aluno: " TO cNome

        ACCEPT "Nota 1: " TO nN1
        ACCEPT "Nota 2: " TO nN2
        ACCEPT "Nota 3: " TO nN3
        ACCEPT "Nota 4: " TO nN4

        nN1 := Val(nN1)
        nN2 := Val(nN2)
        nN3 := Val(nN3)
        nN4 := Val(nN4)

        AADD(aAlunos, {cNome, nN1, nN2, nN3, nN4})

    NEXT


    QOut("")
    QOut("ALUNOS APROVADOS:")
    
    FOR nI := 1 TO Len(aAlunos)

        nMedia := (aAlunos[nI][2] + ;
                   aAlunos[nI][3] + ;
                   aAlunos[nI][4] + ;
                   aAlunos[nI][5]) / 4

        IF nMedia >= 7

            QOut(aAlunos[nI][1] + " - Media: " + Str(nMedia,5,2))

        ENDIF

    NEXT


    QOut("")
    QOut("ALUNOS REPROVADOS:")

    FOR nI := 1 TO Len(aAlunos)

        nMedia := (aAlunos[nI][2] + ;
                   aAlunos[nI][3] + ;
                   aAlunos[nI][4] + ;
                   aAlunos[nI][5]) / 4

        IF nMedia < 7

            QOut(aAlunos[nI][1] + " - Media: " + Str(nMedia,5,2))

        ENDIF

    NEXT


RETURN NIL