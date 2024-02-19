*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Firefox
${URL}        https://www.google.com

*** Test Cases ***
Abrir Google no Firefox
    Open Browser    ${URL}    ${BROWSER}
    Sleep	2s
    Close Browser   