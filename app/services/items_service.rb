class ItemsService < BaseService
  def self.items_for_merchant(id)
    process("/api/v1/merchants/#{id}/items")
  end

  def self.all_items
    process("/api/v1/items")
  end

  def self.get_one_item(id)
    process("/api/v1/items/#{id}")
  end
end
