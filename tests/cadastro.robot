*** Settings ***
Resource       ../resources/cadastro.robot
Test Setup     Abrir navegador
# Test Teardown  Fechar navegador

*** Test Case ***

Caso de Teste 01: Realizar cadastro de um novo participante com sucesso
  Acessar o site da orbia
  Aceitar o uso de Cookies
  Clicar no menu Entre ou Cadastre-se
  Inserir com um cpf válido
  Clicar no menu Cadastrar agora
  #Dados Pessoais
  Selecionar um Tipo de usuário válido
  Preencher com um e-mail válido
  Preencher com um apelido válido
  Preencher com um nome válido
  #Conferir cpf inserido
  Preencher com um telefone comercial válido
  Preencher com uma data de nascimento válida
  Preencher com um telefone celular válido
  Informar uma senha válida
  Confirmar senha válida
  Selecionar a opção "Quero receber comunicados e alertas"
  #Selecionar a opção "Não sou um robô"
  Clicar no botão próximo
  #Endereço
  Clicar no botão próximo em Endereço
  #Empresas
  Clicar no botão próximo em Empresas
  #Produção Agropecuária
  Clicar no tipo de seleção
  # Informar com um tamanho de area
  # Selecionar o Estado de produção
  # Selecionar a Cidade de produção
  # Clicar no botão adicionar
  # Clicar no botão finalizar alterações
