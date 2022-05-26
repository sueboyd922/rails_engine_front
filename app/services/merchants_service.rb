class MerchantsService < BaseService
  def self.get_all_merchants
    process('/api/v1/merchants')
  end

  def self.get_one_merchant(id)
    process("/api/v1/merchants/#{id}")
  end

  def self.find_merchants(search)
    process("api/v1/merchants/find_all?name=#{search}")
  end
end
