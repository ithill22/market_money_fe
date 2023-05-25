class MarketsFacade
  def get_markets
    service.get_markets.map do |market_data|
      Market.new(market_data)
    end
  end

  def get_market(market_id)
    market_data = service.get_market(market_id)
    Market.new(market_data)
  end

  private
  def service
    _service ||= MmService.new
  end
end