PROCEDURE Main()
    LOCAL nI

    QOut ("---- Sequência de 1 a 100 ----")
    FOR nI := 1 TO 100
        QOut(Str(nI) + " ")
    NEXT

    QOut ("")
    QOut ("---- Sequência de -50 a 50 ----")
    FOR nI := -50 TO 50
        QOut(Str(nI) + " ")
    NEXT

    QOut ("")
    QOut ("---- Sequência 80 a 5 (Decrescente) ----")
    FOR nI := 80 TO 5 STEP -1
        QOut(Str(nI) + " ")
    NEXT

    QOut ("")
    
RETURN