class MerchantsFacade
  def self.all_merchants
    merchants = MerchantsService.get_all_merchants
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end
end
