*** Keywords ***
Imprimir Frase Para Numeros
    Log To Console    \n----------------------
    FOR    ${numero}    IN RANGE    11
        Log To Console    Estou no número: ${numero} de 0 a 10
    END    

*** Test Cases ***
Imprime números de 0 até 10
    Imprimir Frase Para Numeros

############  Exercicio 2 #############    

*** Keywords ***
Imprimir Nomes de Paises
    Log To Console    \n----------------------
    @{paises}    Create List    Brasil    Estados Unidos    Israel    Alemanha    Japão
    FOR    ${pais}    IN    @{paises}
        Log To Console    ${pais}
    END    

*** Test Cases ***
Imprimir lista de paises
    Imprimir Nomes de Paises    


*** Keywords ***
Imprimir lista de paises com while
    @{paises}            Create List    Brasil    Estados Unidos    França    Alemanha    Japão
    ${index}             Set Variable    ${0}
    ${total_paises}      Get Length     ${paises}
    Log To Console    \n--------------
    WHILE    ${index} < ${total_paises}
        Log To Console    ${paises[${index}]}
        ${index}    Set Variable    ${index + 1}
    END

*** Test Cases ***
Testando imprimir com While
    Imprimir lista de paises com while