FUNCTION Main()

    LOCAL cJogador
    LOCAL cCPU
    LOCAL cResultado
    LOCAL cContinuar := "S"

    DO WHILE Upper(cContinuar) == "S"
        ACCEPT "Digite sua jogada (P=Pedra, A=Papel, T=Tesoura): " TO cJogador

        IF !ValidarJogada(cJogador)
            QOut("Jogada invalida!")
            LOOP
        ENDIF

        cCPU := SortearJogadaCPU()
        QOut("Computador jogou: " + cCPU)

        cResultado := DefinirVencedor(Upper(cJogador), cCPU)
        QOut(cResultado)

        ACCEPT "Deseja jogar novamente? (S/N): " TO cContinuar
    ENDDO

RETURN NIL

FUNCTION SortearJogadaCPU()

    LOCAL nSorteio
    
    nSorteio := hb_RandomInt(1, 3)

    DO CASE
        CASE nSorteio == 1
            RETURN "P"
        CASE nSorteio == 2
            RETURN "A"
        CASE nSorteio == 3
            RETURN "T"
    ENDCASE

RETURN ""

FUNCTION ValidarJogada(cJogada)

    cJogada := Upper(cJogada)

    IF cJogada == "P" .OR. ;
       cJogada == "A" .OR. ;
       cJogada == "T"

        RETURN .T.
    ENDIF

RETURN .F.

FUNCTION DefinirVencedor(cJogada1, cJogada2)

    IF cJogada1 == cJogada2
        RETURN "Empate!"
    ENDIF

    IF (cJogada1 == "P" .AND. cJogada2 == "T") .OR. ;
       (cJogada1 == "A" .AND. cJogada2 == "P") .OR. ;
       (cJogada1 == "T" .AND. cJogada2 == "A")

        RETURN "Voce ganhou!"
    ENDIF

RETURN "Computador ganhou!"