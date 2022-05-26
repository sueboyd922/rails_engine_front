class ItemsFacade
  def self.items_for_merchant(id)
    items = ItemsService.items_for_merchant(id)
    items[:data].map do |item|
      Item.new(item)
    end
  end

  def self.all_items
    items = ItemsService.all_items
    items[:data].map do |item|
      Item.new(item)
    end
  end

  def self.one_item(id)
    item = ItemsService.get_one_item(id)
    Item.new(item[:data])
  end
end
