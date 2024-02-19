*** Variables ***
@{frutas}    Banana    Maçã    Laranja    Morango    Abacaxi

*** Test Cases ***
Imprimir Frutas no Console com FOR
    Log To Console    ----------
    FOR    ${fruta}    IN    @{frutas}
        Log To Console    ${fruta}
    END
Imprimir Frutas no Console com acesso a posição   
    Log To Console    ----------
    Log To Console    ${frutas[0]}
    Log To Console    ${frutas[1]}
    Log To Console    ${frutas[2]}
    Log To Console    ${frutas[3]}
    Log To Console    ${frutas[4]}
    