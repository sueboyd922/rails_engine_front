class ItemsFacade
  def self.items_for_merchant(id)
    items = ItemsService.items_for_merchant(id)
    items[:data].map do |item|
      Item.new(item)
    end
  end
end
