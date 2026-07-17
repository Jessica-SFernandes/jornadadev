FUNCTION Main()

    LOCAL cNome := ""
    LOCAL cEntrada := ""
    LOCAL dNasc
    LOCAL nPreco := 0, nIdade := 0, nDesconto := 0, nTotal := 0


    ACCEPT "Digite o nome do cliente: " TO cNome
    ACCEPT "Digite a data de nascimento (DD/MM/AAAA): " TO cEntrada
    dNasc := CToD(cEntrada)
    ACCEPT "Digite o preço do produto: " TO cEntrada
    nPreco := Val(cEntrada)


    nIdade := Int((Date() - dNasc) / 365)

    IF nIdade > 60
        nDesconto := nPreco * 0.125 // 12.5%
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("========================================")
    QOut("           RESUMO DO PEDIDO             ")
    QOut("========================================")
    QOut("Cliente:    " + cNome)
    QOut("Idade:      " + AllTrim(Str(nIdade)) + " anos")
    QOut("Preço Orig: " + Str(nPreco, 10, 2))
    QOut("Desconto:   " + Str(nDesconto, 10, 2))
    QOut("Total:      " + Str(nTotal, 10, 2))
    QOut("========================================")
    
RETURN NIL