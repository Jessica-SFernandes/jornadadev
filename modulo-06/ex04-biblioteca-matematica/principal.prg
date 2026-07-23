FUNCTION Main()

    SET PROCEDURE TO matematica.prg

    CLS

    QOut("=== TESTANDO BIBLIOTECA MATEMATICA ===")
    QOut("Fatorial de 5: " + AllTrim(Str(FatorialN(5))))
    QOut("7 é primo? " + IIF(EhPrimo(7), ".T.", ".F."))
    QOut("10 é primo? " + IIF(EhPrimo(10), ".T.", ".F."))
    QOut("MDC de 24 e 36: " + AllTrim(Str(MDC(24, 36))))
    QOut("MMC de 12 e 15: " + AllTrim(Str(MMC(12, 15))))

RETURN NIL