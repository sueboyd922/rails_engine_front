class MerchantsService
  def self.get_all_merchants
    response = conn.get('/api/v1/merchants')
    get_json(response)
  end

  def self.get_one_merchant(id)
    response = conn.get("/api/v1/merchants/#{id}")
    get_json(response)
  end

  def self.conn
    Faraday.new("http://localhost:3000")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
