*** Variables ***

#Acesso
${URL}                          http://uat.satelital.com.br/orbia
${URLposLogin}                  http://uat.satelital.com.br/orbia/Account/LogOn?returnUrl=%2Forbia%2F
# MENU, CAMPOS E BOTOES
${botao_entrarOuCadastre-se}    xpath://*[@id='userMenuItem']/a
${input_cpf}                    name=email
${input_senha}                  name=password
${botao_entrar}                 name=login

# DADOS
${cpfValido}                    38231037845
${senhaValida}                  Unica@123
${cpfInvalido}                  12345678901
${senhaInvalida}                000000
${nomeMenu}                     Cadastrar Notas

#MENSAGENS
${localizao_mensagem}           xpath://*[@class='alert alert-danger']
${mensagem_erro}                E-mail, CPF ou senha incorretos!
${mensagem_erroSemDados}        Existem erros de preenchimento!

