#language: pt

@enjoei
@products
Funcionalidade: Products - Validar cadastro de produtos na ECommerce API
  Como um usuário do sistema
  Quero realizar o cadastro de produtos via API
  Para administrar os produtos presentes no ECommerce API

  @validar_criacao_produto
  Cenário: Validar criação de produto na ECommerce API
    Dado ter a massa do produto a ser cadastrado
    Quando realizar requisição POST cadastro do produto
    Então validar que o produto foi cadastrado com sucesso
