#define PI 3.14159

FUNCTION Main()
    LOCAL cEntrada := ""
    LOCAL nRaio := 0, nArea := 0
    LOCAL nCatetoA := 0, nCatetoB := 0, nHipotenusa := 0
    LOCAL nPeso := 0, nAltura := 0, nIMC := 0

    ACCEPT "Digite o raio do círculo: " TO cEntrada
    nRaio := Val(cEntrada)
    nArea := PI * (nRaio ** 2)
    QOut("Área do círculo: " + Str(nArea, 10, 2))
    QOut("---")

    ACCEPT "Digite o valor do cateto A: " TO cEntrada
    nCatetoA := Val(cEntrada)
    ACCEPT "Digite o valor do cateto B: " TO cEntrada
    nCatetoB := Val(cEntrada)
    nHipotenusa := Sqrt((nCatetoA ** 2) + (nCatetoB ** 2))
    QOut("Hipotenusa: " + Str(nHipotenusa, 10, 2))
    QOut("---")

    ACCEPT "Digite o seu peso (kg): " TO cEntrada
    nPeso := Val(cEntrada)
    ACCEPT "Digite a sua altura (m): " TO cEntrada
    nAltura := Val(cEntrada)
    nIMC := nPeso / (nAltura ** 2)
    QOut("IMC: " + Str(nIMC, 10, 2))

RETURN NIL