*** Settings ***
Documentation    Suite description

*** Variables ***

${BROWSER}              chrome
${STORELURL}            http://automationpractice.com/index.php
${BUSCASITE}            //*[@src="http://automationpractice.com/img/p/1/1-home_default.jpg"]
${ADDCARRINHO}          //*[@name="Submit"]
${CLOSEWINDOW}          //*[@title="Close window"]
${PROCEED}              //*[@class="btn btn-default button button-medium"]
${PROCEED2}             //*[@class="button btn btn-default standard-checkout button-medium"]
${PLUSBTN}              //*[@title="Add"]
${LIXEIRACOMPRA}        //*[@class="icon-trash"]
${VALORTOTALCOMPRA}     //*[@id="total_price"]//..//*[contains(text(),'$35.02')]
${SIGNINBTN}            //*[@id="SubmitLogin"]