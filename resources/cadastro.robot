***Settings***
Library     SeleniumLibrary
Resource    ../resources/variaveisCadastro.robot
#Captcha
#Library                     CaptchaLibrary          serviceUrl=sample.captcha.service.url

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

#TODO: FIX Cookie => sleep 
Aceitar o uso de Cookies
  sleep               3
  Click Element        ${botao_cookie}

Clicar no menu Entre ou Cadastre-se
  Click Element                       ${botao_entrarOuCadastre-se}

***Keywords***
Inserir com um cpf válido
  Input Text          ${input_cpf}             ${cpfValido}    

Clicar no menu Cadastrar agora
  Click Element       ${botao_cadastre-se} 


#TODO: FIX Tipo de Usuario => sleep 
Selecionar um Tipo de usuário válido
  sleep                        3
  #Wait Until Element Is Visible  ${input_tipoUsuario}  timeout=3
  Click Element             ${input_tipoUsuario}
  Click Element             ${select_tipoUsuario}
         
Preencher com um e-mail válido
  Input Text          ${input_email}          ${emailValido}

Preencher com um apelido válido
  Input Text          ${input_apelido}        ${apelidoValido}

Preencher com um nome válido
  Input Text          ${input_nome}        ${nomeValido}

#TODO: FIX cpf => develop 
Conferir cpf inserido
  #sleep                        3
  Wait Until Element Is Visible  ${localizacao_cpf}  timeout=10
  Element Should Contain    ${localizacao_cpf}    ${cpfLocalizado}      

Preencher com um telefone comercial válido
  Input Text          ${input_telefoneComercial}        ${telefoneComlValido}

Preencher com uma data de nascimento válida
  Input Text          ${input_dataNascimento}         ${dataNascValida}

Preencher com um telefone celular válido
  Input Text        ${input_celular}              ${celularValido}

Informar uma senha válida
  Input Text        ${input_senha}          ${senhaValida}

Confirmar senha válida
  Input Text        ${input_confirmaSenha}          ${confirmaSenhaValida}

Selecionar a opção "Quero receber comunicados e alertas"
  Click Element                     ${check_comunicadosAlertas}

Selecionar a opção "Não sou um robô"
  Click Element                       ${check_robo}

Clicar no botão próximo
  #Wait Until Element Is Visible  ${botao_proximo}  timeout=10
  Click Element       ${botao_proximo}

#Endereço
Clicar no botão próximo em Endereço
  sleep               10
  #Wait Until Element Is Visible  ${botao_proximo_endereco}  timeout=10
  Click Element       ${botao_proximo_endereco}

#Empresas
Clicar no botão próximo em Empresas  
  #sleep               20
  Wait Until Element Is Visible  ${botao_proximo_empresas}  timeout=5
  Click Element       ${botao_proximo_empresas}

#PRODUÇÃO AGROPECUÁRIA
Clicar no tipo de seleção
  Click Element     ${input_tipo_producao}

Preencher com um tamanho de area

  Input Text        ${input_area}     ${area_valida}