*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_TestSuite.robot
Resource    ../Functions/Teste_InputData.robot


*** Keywords ***
Login Ecommerce
    Open Browser    ${STORELURL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window
    Go To         ${STORELURL}

Escolhe Produto
    Wait Until Page Contains Element    ${BUSCASITE}    timeout=60.0
    Click Element    ${BUSCASITE}
    Wait Until Page Contains Element    ${ADDCARRINHO}    timeout=60.0
    Click Element    ${ADDCARRINHO}
    sleep    5
    Click Element    ${PROCEED}
    Wait Until Page Contains Element    ${PROCEED}    timeout=60.0
    Click Element    ${PLUSBTN}


Verifica Saldo
    ${VERIFICAVALORTOTAL}=    Run Keyword And Return Status   Verifica Valor Total da Compra
    Run Keyword If  '${VERIFICAVALORTOTAL}'=='True'    Run Keywords
    ...    Capture Page Screenshot
    ...    AND   Log To Console     Saldo Suficiente!
    ...    ELSE    Run Keywords     Capture Page Screenshot    AND   Log To Console    Saldo Insuficiente!

Verifica Valor Total da Compra
    Wait Until Page Contains Element    ${LIXEIRACOMPRA}    timeout=60.0
    Page Should Contain Element      ${VALORTOTALCOMPRA}

Finaliza Pedido
    Click Element    ${PROCEED2}
    Wait Until Page Contains Element    ${SIGNINBTN}    timeout=60.0
    Capture Page Screenshot


