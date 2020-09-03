*** Settings ***
Documentation    Suite description

*** Variables ***

${BROWSER}              chrome
${TRAVELURL}            https://www.hurb.com/br/
${BUSCASITE}            //*[@id="downshift-0-input"]
${BUSCADATE1}           //*[@name="startDate"]
${BUSCADATE2}           //*[@aria-label="Choose Quarta-feira, 2 de Setembro de 2020 as your check-in date. It’s available."]
${BUSCADATE3}           //*[@aria-label="Choose Quarta-feira, 9 de Setembro de 2020 as your check-out date. It’s available."]
${PESQUISAR}            //*[@class="hrc-2odzf hrc-3ReFs hrc-dwzWd hrc-2tfuB hrc-1O3dX hrc-3vAUE hrc-POxrQ"]
${RESULT}               //*[@class="product-search-title_count"]