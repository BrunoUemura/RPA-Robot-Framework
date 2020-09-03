*** Settings ***
Documentation    Suite description
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../Functions/Teste_Keywords.robot
Resource    ../PageObjects/Teste_InputData.robot
#Test Teardown   Run Keywords   Close Browser

*** Test Cases ***
Test title
    [Tags]    Teste1
    Acesso Site
    Busca Site
#    [Teardown]    close Browser
