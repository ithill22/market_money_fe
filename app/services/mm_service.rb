class MmService

  def get_markets
    response = conn.get('markets')
    parse_response(response)[:data]
  end

  def get_market(market_id)
    response = conn.get("markets/#{market_id}")
    parse_response(response)[:data]
  end

  def get_market_vendors(market_id)
    response = conn.get("markets/#{market_id}/vendors")
    parse_response(response)[:data]
  end

  def get_vendor(vendor_id)
    response = conn.get("vendors/#{vendor_id}")
    parse_response(response)[:data]
  end

  private
  def parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://localhost:3000/api/v0/')
  end
end