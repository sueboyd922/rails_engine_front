class MerchantsFacade
  def self.all_merchants
    merchants = MerchantsService.get_all_merchants
    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.one_merchant(id)
    merchant = MerchantsService.get_one_merchant(id)
    Merchant.new(merchant[:data])
  end

  def self.find_merchants(search)
    merchants = MerchantsService.find_merchants(search)
    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end
