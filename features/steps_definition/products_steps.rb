Dado('ter a massa do produto a ser cadastrado') do
    @body = {
      "name": faker_book_name,
      "quantity": faker_number(3),
      "price": faker_number(4),
      "description": faker_name
    }

    @create_product = Products.new
  end
  
  Quando('realizar requisição POST cadastro do produto') do
    @product = @create_product.post_create_product(@body)
  end
  
  Então('validar que o produto foi cadastrado com sucesso') do
    expect(@product.code).to eql 200

    @get_product = @create_product.get_product_id(@product['data']['productId'])
    expect(@get_product.code).to eql 200
    expect(@get_product['data']['id']).to eql (@product['data']['productId'])
  end
