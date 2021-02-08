*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/variaveislogin.robot

***Variables***
${BROWSER}                            firefox

*** Keywords ***
### Setup e Teardown
Abrir navegador
  Open Browser                        ${URL}                                    ${BROWSER}

Fechar navegador
  Close Browser
