
***Variables***

#Acesso
${URL}                          http://uat.satelital.com.br/orbia

#LOGIN
# MENU, CAMPOS E BOTOES
${botao_entrarOuCadastre-se}    xpath://*[@id='userMenuItem']/a
${input_cpf}                    id:registerEmail
${botao_cadastre-se}            xpath://*[@id="registerForm"]/div[3]/button
${botao_cookie}                 //*[@id="btnAcceptCookies"]

#DADOS PESSOAIS 
# MENU, CAMPOS E BOTOES
${input_tipoUsuario}            class=chosen-single
${select_tipoUsuario}           xpath:.//li[@data-option-array-index=3]
${input_email}                  name=Email 
${input_apelido}                name=NickName
${input_nome}                   name=Name
${localizacao_cpf}              name=Documento              #TODO: Fix
${input_telefoneComercial}      name=Phone1
${input_dataNascimento}         id:birthDateTextBox 
${input_celular}                name=Phone2
${input_senha}                  name=Password
${input_confirmaSenha}          name=confirmPassword
${check_comunicadosAlertas}     class:checkbox-checkmark
${check_robo}                   css:div[style='width: 304px; height: 78px;']
${botao_proximo}                id:btnProximo

#DADOS PESSOAIS
# DADOS
${cpfValido}                    483.514.080-00
${emailValido}                  xpto18@gmail.com
${apelidoValido}                Mohammed
${nomeValido}                   Teste teste
${cpfLocalizado}                224.718.235-64
${telefoneComlValido}           1122743434
${dataNascValida}               04041982
${celularValido}                11-98300-0733
${senhaValida}                  Orbia@1234
${confirmaSenhaValida}          Orbia@1234

#ENDEREÇO
# MENU, CAMPOS E BOTOES
${botao_proximo_endereco}                id:btnProximo

#EMPRESAS
# MENU, CAMPOS E BOTOES
${botao_proximo_empresas}                id:btnProximo


#PRODUÇÃO AGRICOLA
# MENU, CAMPOS E BOTOES
${input_tipo_producao}                    id:imgsojagt
${input_area}                             class:areaplant

#PRODUÇÃO AGRICOLA
# DADOS
${area_valida}                  xpath:.//input[@data-mask="cpf"]

