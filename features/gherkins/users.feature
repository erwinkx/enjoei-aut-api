#language: pt

@enjoei
@users
Funcionalidade: Users - Validar cadastro de usuários na ECommerce API
  Como um usuário do sistema
  Quero realizar o cadastro de usuários via API
  Para administrar o ECommerce API

  @validar_criacao_usuario
  Cenário: Validar criação de usuário na ECommerce API
    Dado ter a massa do usuário a ser cadastrado
    Quando realizar requisição POST cadastro do usuário
    Então validar que o usuário foi cadastrado com sucesso
