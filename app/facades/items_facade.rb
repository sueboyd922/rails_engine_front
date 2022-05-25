class ItemsFacade
  def self.items_for_merchant(id)
    items = ItemsService.items_for_merchant(id)
  end


end
