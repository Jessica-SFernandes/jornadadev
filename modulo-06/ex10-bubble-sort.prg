FUNCTION Main()

    LOCAL aVetor := {}
    LOCAL nI
    LOCAL nNum
    LOCAL cNum

    FOR nI := 1 TO 10

        ACCEPT "Digite um numero: " TO cNum

        nNum := Val(cNum)

        AADD(aVetor, nNum)

    NEXT

    BubbleSort(aVetor)

    QOut("")
    QOut("Vetor ordenado:")

    FOR nI := 1 TO Len(aVetor)

        QOut(aVetor[nI])

    NEXT


RETURN NIL

FUNCTION BubbleSort(aVetor)

    LOCAL nI
    LOCAL nJ
    LOCAL nTemp

    FOR nI := 1 TO Len(aVetor) - 1

        FOR nJ := 1 TO Len(aVetor) - nI
            IF aVetor[nJ] > aVetor[nJ + 1]


                nTemp := aVetor[nJ]

                aVetor[nJ] := aVetor[nJ + 1]

                aVetor[nJ + 1] := nTemp


            ENDIF


        NEXT

    NEXT


RETURN aVetor