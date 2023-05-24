class MmFacade
  def get_markets
    service.get_markets.map do |market_data|
      Market.new(market_data)
    end
  end

  def get_market(market_id)
    market_data = service.get_market(market_id)
    Market.new(market_data)
  end

  def get_market_vendors(market_id)
    service.get_market_vendors(market_id).map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end

  def get_vendor(vendor_id)
    vendor_data = service.get_vendor(vendor_id)
    Vendor.new(vendor_data)
  end

  private
  def service
    _service ||= MmService.new
  end
end