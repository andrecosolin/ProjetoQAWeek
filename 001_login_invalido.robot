*** Settings ***

Documentation    Realizacao de login
Resource         resource/001_invalido_login.resource

*** Test Cases ***
Realizar login com campo CPF e senha inválidos
    Given Acessar o site da kabum
    And Clicar no login
    And Digitar o cpf "40098989900"
    And Digitar sua senha "errada"
    And Clico no botao entrar
    Then Nao consegue entrar 