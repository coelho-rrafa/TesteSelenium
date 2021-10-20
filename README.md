# Teste Prático - Accenture

# Desafio Técnico - Selenium

Projeto em selenium webdrive(ruby) e cucumber usando Page objects (precisamos executar o script através da feature);

------------

## Passo a passo para o teste automático:
1.  Entrar no site http://sampleapp.tricentis.com/101/app.php
2. Preencher o formulário, aba “Enter Vehicle Data” e pressione next
3. Preencher o formulário, aba “Enter Insurant Data” e pressione next
4. Preencher o formulário, aba “Enter Product Data” e pressione next
5. Preencher o formulário, aba “Select Price Option” e pressione next
6. Preencher o formulário, aba “Send Quote” e pressione Send
7. Verificar a mensagem “Sending e-mail success!” na tela

## Overview
O código utiliza Design Patterns e estruturação visando manutenção e reaproveitamento em grande escala.
- Uso de Gherkin (features/steps)
- Uso de Page Objects Model
- Massas de dados centralizadas com estrutura de controle (Factory)

## Sobre a execução do projeto: 

## Requisitos
- Ruby >= 2.5.x
- [chromedriver]('https://chromedriver.chromium.org/downloads') da mesma versão do chrome

-- Baixar e extrair em uma pasta que esteja no path (ex: pasta bin do ruby)

## Execução
### Local
1. Acesso: acessar a raiz do projeto usando um terminal
2. Instalação de dependências: executar o comando `bundle install`
3. Execução do teste: executar o comando `bundle exec cucumber -p default`

