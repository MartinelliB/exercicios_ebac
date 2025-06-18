#language:pt

Funcionalidade:Configurar Produto
Como Cliente da Ebac-Shop
quero configurar meu produto
e escolher a quantidade 
para depois adicionar ao carrinho

Cenário:Os campos de configuração devem sem obrigatórios
Dado que estou na página do produto
Quando eu tentar adicionar ao carrinho sem preencher algum campo
Então Deve exibir uma mensagem "Campos Obrigatórios precisam ser preenchidos"

Cenário:Limite de Produtos
Dado que estou adicionando produtos
Quando eu tentar adicionar mais de 10 produtos no carrinho~
Então deve exibir uma mensagem "Excedeu Quantidade de Produtos"

Cenário:Limpar Escolhas
Dado que estou insatisfeito com alguma configuração
Quando eu clicar no botão Limpar
Então deve limpar todas as escolhas feitas
