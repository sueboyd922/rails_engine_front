class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.all_merchants
  end

  def show
    @merchant = MerchantsFacade.one_merchant(params[:id])
    @items = ItemsFacade.items_for_merchant(params[:id])
  end
end
