*** Settings ***
Resource       ../resources/login.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Case ***

Caso de Teste 01: Login de sucesso
  Acessar o site da orbia
  Clicar no menu Entre ou Cadastre-se
  Preencher com um cpf válido
  Preencher com uma senha válida
  Clicar em Entrar
  Conferir se o usuário logou corretamente

Caso de Teste 02: Login com cpf inválido
  Acessar o site da orbia
  Clicar no menu Entre ou Cadastre-se
  Preencher com um cpf inválido
  Preencher com uma senha válida
  Clicar em Entrar
  Conferir mensagem de erro

Caso de Teste 03: Login com senha inválida
  Acessar o site da orbia
  Clicar no menu Entre ou Cadastre-se
  Preencher com um cpf válido
  Preencher com uma senha inválida
  Clicar em Entrar
  Conferir mensagem de erro

Caso de Teste 04: Login com os campos vazios
  Acessar o site da orbia
  Clicar no menu Entre ou Cadastre-se
  Clicar em Entrar
  Conferir mensagem de erro sem dados
