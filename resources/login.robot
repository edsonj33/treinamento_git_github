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

### Commons
*** Keywords ***
Acessar o site da orbia
  Go To                               ${URL}

Clicar no menu Entre ou Cadastre-se
  Click Element                       ${botao_entrarOuCadastre-se}

Preencher com um cpf válido
  Input Text                          ${input_cpf}                              ${cpfValido}

Preencher com uma senha válida
  Input Text                          ${input_senha}                            ${senhaValida}

Clicar em Entrar
  Click Element                       ${botao_entrar}
  sleep                               2

Conferir mensagem de erro
  Element Should Contain              ${localizao_mensagem}                     ${mensagem_erro}

### Test Case
*** Keywords ***
# Caso de Teste 01
Conferir se o usuário logou corretamente
  Sleep                               6
  Location Should Be                  ${URLposLogin}
# Caso de Teste 02
Preencher com um cpf inválido
  Input Text                          ${input_cpf}                              ${cpfInvalido}
  
# Caso de Teste 03
Preencher com uma senha inválida
  Input Text                          ${input_senha}                            ${senhaInvalida}
  
# Caso de Teste 04
Conferir mensagem de erro sem dados
  Element Should Contain              ${localizao_mensagem}                     ${mensagem_erroSemDados}
