class MarketsController < ApplicationController
  def index
    @markets = MarketsFacade.new.get_markets
  end

  def show
    @market = MarketsFacade.new.get_market(params[:id])
    @vendors = VendorsFacade.new.get_market_vendors(params[:id])
  end
end