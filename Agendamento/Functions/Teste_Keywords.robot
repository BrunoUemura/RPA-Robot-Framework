*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_TestSuite.robot
Resource    ../Functions/Teste_InputData.robot


*** Keywords ***
Acesso Site
    Open Browser    ${TRAVELURL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window
    Go To         ${TRAVELURL}

Busca Site
    Input Text    ${BUSCASITE}    ${BUSCASITEVALUE1}
    Press Keys    ${BUSCASITE}    TAB
    Click Element   ${BUSCADATE1}
    Click Element   ${BUSCADATE2}
    Click Element   ${BUSCADATE3}
    Click Element   ${PESQUISAR}
    Wait Until Page Contains Element    ${RESULT}
    Capture Page Screenshot


