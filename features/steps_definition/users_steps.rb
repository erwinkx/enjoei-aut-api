Dado('ter a massa do usuário a ser cadastrado') do
    @body = {
      "email": faker_email,
      "password": faker_number(10),
      "name": faker_name,
      "userType": "Administrator"
    }

    @create_user = Users.new
  end
  
  Quando('realizar requisição POST cadastro do usuário') do
    @user = @create_user.post_create_user(@body)
  end
  
  Então('validar que o usuário foi cadastrado com sucesso') do
    expect(@user.code).to eql 200
  end
