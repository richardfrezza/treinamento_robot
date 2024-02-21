*** Variables ***
${EMAIL_DOMAIN}  robot.com

*** Keywords ***
Gerador de Email
    [Arguments]  ${nome}  ${sobrenome}  ${idade}
    ${email} =  Set Variable  ${nome}_${sobrenome}_${idade}@${EMAIL_DOMAIN}
    RETURN  ${email} 

Gerador de Email 2 "${nome}" "${sobrenome}" "${idade}"
    ${email2} =    Evaluate    "${nome}_${sobrenome}_${idade}@${EMAIL_DOMAIN}"
    RETURN  ${email2}         

*** Test Cases ***
Exemplo de Uso da Keyword
    ${nome} =  Set Variable  richard
    ${sobrenome} =  Set Variable  frezza
    ${idade} =  Set Variable  36
    ${email} =  Gerador de Email  ${nome}  ${sobrenome}  ${idade}
    Log To Console    -----------
    Log To Console    ${email}    

Exemplo de Uso da Keyword 2
    ${email2} =  Gerador de Email 2 "frezza" "richard" "36"       
    Log To Console    -----------
    Log To Console    ${email2}  