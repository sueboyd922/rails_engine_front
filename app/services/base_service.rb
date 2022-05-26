class BaseService
  def self.conn
    Faraday.new("http://localhost:3000")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.process(url)
    response = conn.get(url)
    get_json(response)
  end
end
