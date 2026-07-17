FUNCTION Main()
    
    LOCAL cStringLonga  := "Harbour"
    LOCAL cStringCurta  := "Harb"
    LOCAL lIgualSimples := .F.
    LOCAL lIgualExato   := .F.

    lIgualSimples := (cStringLonga = cStringCurta) 

    lIgualExato   := (cStringLonga == cStringCurta) 

    QOut("Comparando '" + cStringLonga + "' com '" + cStringCurta + "':")
    QOut("Usando '=' : " + If(lIgualSimples, ".T.", ".F."))
    QOut("Usando '==': " + If(lIgualExato, ".T.", ".F."))

RETURN NIL