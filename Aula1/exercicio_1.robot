** Variables ***
&{dados_pessoa}    
...    nome=Richard    
...    idade=18    
...    cidade=Santa Catarina    
...    profissao=Dev    
...    telefone=(48) 99999-4321    
...    email=teste@example.com

*** Test Cases ***
Imprimir Informações da Pessoa
    Log To Console    ----------------------
    Log To Console    ${dados_pessoa['nome']}
    Log To Console    ${dados_pessoa['idade']}
    Log To Console    ${dados_pessoa['cidade']}
    Log To Console    ${dados_pessoa['profissao']}
    Log To Console    ${dados_pessoa['telefone']}
    Log To Console    ${dados_pessoa['email']}