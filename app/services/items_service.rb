class ItemsService
  def self.items_for_merchant(id)
    response = conn.get("/api/v1/merchants/#{id}/items")
    get_json(response)
  end

  def self.all_items
    response = conn.get("/api/v1/items")
    get_json(response)
  end

  def self.conn
    Faraday.new("http://localhost:3000")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
