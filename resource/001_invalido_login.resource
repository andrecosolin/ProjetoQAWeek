*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${BROWSER}        chrome
${URL}            https://www.stg.kabum.com.br
${LOGIN}          id=linkLoginHeader
${CAMPO_CPF}      xpath=/html/body/div[1]/main/div/div[1]/form/div/div[1]/div/div/input
${CAMPO_SENHA}    xpath=/html/body/div[1]/main/div/div[1]/form/div/div[2]/div/div/input
${BOTAO_ENTRAR}   xpath=/html/body/div[1]/main/div/div[1]/form/div/button
${MSG_ERRO}       xpath=/html/body/div[1]/main/div/div[1]/form/div/div[3]/p

*** Keywords ***
#Realizar login com campo CPF e senha válidos;
Acessar o site da kabum
     open browser                     url=${URL}       browser=${BROWSER}
Clicar no login
     Click Element                    ${LOGIN}
Digitar o cpf "${CPF}"
     Input Text                       ${CAMPO_CPF}      ${CPF}
Digitar sua senha "${SENHA}"
     Input Password                   ${CAMPO_SENHA}    ${SENHA}
Clico no botao entrar
     Click Button                     ${BOTAO_ENTRAR}
Nao consegue entrar
     Wait Until Element Is Visible    ${MSG_ERRO}