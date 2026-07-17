FUNCTION Main ()
    LOCAL cNome := "Jéssica Fernandes"
    LOCAL nSalario := 5800.90
    LOCAL lAtivo := .T.
    LOCAL dAdmissao := CtoD("01/03/2021")
    LOCAL cDepartamento := "TI/05"

    QOut("Funcionário: " + cNome)
    QOut("Salário: " + Str(nSalario, 10, 2))
    QOut("Ativo: " + If(lAtivo, "Sim", "Não"))
    QOut("Admissão: " + DTOC(dAdmissao))
    QOut("Departamento: " + cDepartamento)

RETURN NIL