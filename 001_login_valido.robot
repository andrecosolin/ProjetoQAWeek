*** Settings ***

Documentation    Realizacao de login
Resource         resource/001_valido_login.resource

*** Test Cases ***
Realizar login com campo CPF e senha válidos
    Given Acessar o site da kabum
    And Clicar no login
    And Digitar o cpf "andre.cosolin+qa@kabum.com.br"
    And Digitar sua senha "teste123"
    And Clico no botao entrar
    Then Volta pra home do kabum 


