FUNCTION Main()

    LOCAL cEntrada := ""
    LOCAL nN1 := 0, nN2 := 0, nN3 := 0, nN4 := 0
    LOCAL nMediaPonderada := 0

    ACCEPT "Digite a Nota 1 (Peso 1): " TO cEntrada
    nN1 := Val(cEntrada)

    ACCEPT "Digite a Nota 2 (Peso 2): " TO cEntrada
    nN2 := Val(cEntrada)

    ACCEPT "Digite a Nota 3 (Peso 3): " TO cEntrada
    nN3 := Val(cEntrada)

    ACCEPT "Digite a Nota 4 (Peso 4): " TO cEntrada
    nN4 := Val(cEntrada)

    nMediaPonderada := ((nN1 * 1) + (nN2 * 2) + (nN3 * 3) + (nN4 * 4)) / (1 + 2 + 3 + 4)

    QOut("Média Ponderada Final: " + Str(nMediaPonderada, 10, 2))

RETURN NIL