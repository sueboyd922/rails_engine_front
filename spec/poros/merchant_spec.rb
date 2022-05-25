require 'rails_helper'

RSpec.describe Merchant do
  describe 'initialize' do
    it 'has attributes' do
      merchant_data = {id: 3, attributes: {name: "Sampson Sons"} }

      merchant = Merchant.new(merchant_data)
      expect(merchant).to be_a Merchant
      expect(merchant.id).to eq(merchant_data[:id])
      expect(merchant.name).to eq(merchant_data[:attributes][:name])
    end
  end
end
