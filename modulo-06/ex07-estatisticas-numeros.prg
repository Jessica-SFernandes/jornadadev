FUNCTION Main()

    LOCAL aV := {}
    LOCAL nNum
    LOCAL nI
    LOCAL nSoma := 0
    LOCAL nMedia

    FOR nI := 1 TO 10

        ACCEPT "Digite um numero: " TO nNum

        AADD(aV, Val(nNum))

    NEXT

    ASORT(aV)

    FOR nI := 1 TO Len(aV)

        nSoma += aV[nI]

    NEXT

    nMedia := nSoma / Len(aV)

    QOut("Numeros em ordem crescente:")

    FOR nI := 1 TO Len(aV)

        QOut(aV[nI])

    NEXT

    QOut("Soma: " + Str(nSoma))
    QOut("Media: " + Str(nMedia, 10, 2))

    QOut("Menor numero: " + Str(aV[1]))
    QOut("Maior numero: " + Str(aV[Len(aV)]))

RETURN NIL