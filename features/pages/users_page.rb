class Users
  include HTTParty
    
  base_uri CONFIG_API['url']
    
  def post_create_user(body)
      self.class.post("/v1/users", body: body.to_json, headers: {'Content-Type': 'application/json'})
  end
end
