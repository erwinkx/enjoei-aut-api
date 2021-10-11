class Products
  include HTTParty
    
   base_uri CONFIG_API['url']
    
    def post_create_product(body)
      self.class.post("/v1/products", body: body.to_json, headers: {'Content-Type': 'application/json'})
    end

    def get_product_id(id)
      self.class.get("/v1/products/#{id}", headers: {'Content-Type': 'application/json'})
    end
end