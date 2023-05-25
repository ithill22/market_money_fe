class MmService

  def get_markets
    get_url('markets')
  end

  def get_market(market_id)
    get_url("markets/#{market_id}")
  end

  def get_market_vendors(market_id)
    get_url("markets/#{market_id}/vendors")
  end

  def get_vendor(vendor_id)
    get_url("vendors/#{vendor_id}")
  end

  private
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def conn
    Faraday.new(url: 'http://localhost:3000/api/v0/')
  end
end