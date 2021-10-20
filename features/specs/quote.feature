#language: pt
Funcionalidade: Cotação de seguro para veículo automotor
  Como usuário do site Tricentis Vehicle Insurance Application
  Gostaria de solicitar uma cotação de seguro
  Para que eu possa assegurar meu veículo

  Contexto:
    Dado que esteja na página incial
    
    Cenário: Solicitar cotação via e-mail
      Quando selecionar a categoria "Automobile Insurance"
      E preencher o formulário da forma correta
      Então deverá ser permitida o envio da cotação
      E a mensagem "Sending e-mail success!" deverá ser exibida