            #language: pt

            Funcionalidade: Tela de login
            Como Cliente do Ebac-Shop
            quero fazer o login na plataforma
            para visualizar meus produtos

            Contexto:
            Dado que eu acesse a página de autenticação do Ebac-Shop

            Cenário: Autenticação Válida
            Quando eu digitar o usuário "bruno@ebac.com.br"
            E a senha "123456"
            Então deve redirecionar para a página de início

            Cenário: Usuário Inválido
            Quando eu digitar o usuário "dadasao@ebac.com.br"
            E a senha "123456"
            Então deve exibir uma mensagem de alerta "usuário inválido"

            Cenário: Usuário Com senha inválida
            Quando eu digitar o usuário "bruno@ebac.com.br"
            E a senha "1asdasd23"
            Então deve exibir uma mensagem de alerta "usuário ou senha inválidos"
