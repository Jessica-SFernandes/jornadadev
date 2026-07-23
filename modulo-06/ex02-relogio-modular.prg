PROCEDURE Main()

    LOCAL nI
    LOCAL cHora

    CLS

    FOR nI := 1 TO 30

        cHora := ObterHora()
        cHora := FormatarHora(cHora)
        ExibirHora(cHora)

        Inkey(1)

    NEXT

    QOut("")
    QOut("Relógio Finalizado!")

RETURN

FUNCTION ObterHora()
RETURN Time()

FUNCTION FormatarHora(cHora)
RETURN cHora

FUNCTION ExibirHora(cHora)
    @ 10, 10 SAY cHora
RETURN NIL