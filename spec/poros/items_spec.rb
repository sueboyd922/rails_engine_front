require 'rails_helper'

RSpec.describe Item do
  describe 'initialize' do
    it 'has attributes' do
      item_data = {
            id: 5,
            attributes: {
                  name: "This Thing",
                  description: "It does something boring",
                  unit_price: "6.77",
                  merchant_id: "4"
              }
            }

      item = Item.new(item_data)
      expect(item).to be_an Item
      expect(item.id).to eq(item_data[:id])
      expect(item.name).to eq(item_data[:attributes][:name])
      expect(item.description).to eq(item_data[:attributes][:description])
      expect(item.unit_price).to eq(item_data[:attributes][:unit_price].to_f)
      expect(item.merchant_id).to eq(item_data[:attributes][:merchant_id])
      expect(item.unit_price).to be_a Float
    end
  end
end
