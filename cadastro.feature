#language:pt

Funcionalidade: Tela de Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:Dado que estou na tela de Cadastro

Cenário:Preencher os dados obrigatórios
Quando eu não preencher algum dado obrigatório
Então deve ser exibido uma mensagem de erro:'Campos Obrigatórios precisam ser preenchidos'

Cenário:Não permitir E-mail com formato inválido
Quando eu insirir um e-mail com formato inválido
Então deve aparecer mensagem de erro:'Formato de e-mail inválido'

Cenário:Cadastro com campos vazios
Quando eu tentar finalizar meu cadastro,deixando algum campo em branco
Então deve aparecer mensagem de erro:'Preencha os campos para prosseguir'

Esquema do Cenário: Validação de campos obrigatórios e formato do e-mail
Quando eu tentar finalizar meu cadastro com <nome>,<email> e <senha>
Então deve aparecer a mensagem de erro: "<mensagem>"

Exemplos:

nome	email	                  senha	          mensagem
João	joao@email.com	        123456	
      joao@email.com	        123456	        Campos Obrigatórios precisam ser preenchidos
João		                      123456	        Campos Obrigatórios precisam ser preenchidos
João	joaoemail.com	123456	                  Formato de e-mail inválido
João	joao@email.com		                      Preencha os campos para prosseguir
