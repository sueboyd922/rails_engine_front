class ItemsController < ApplicationController

  def index
    @items = ItemsFacade.all_items
  end
end
