class MerchantsController < ApplicationController
  def index
    if params[:search]
      @merchants = MerchantsFacade.find_merchants(params[:search])
    else
      @merchants = MerchantsFacade.all_merchants
    end
  end

  def show
    @merchant = MerchantsFacade.one_merchant(params[:id])
    @items = ItemsFacade.items_for_merchant(params[:id])
  end
end
