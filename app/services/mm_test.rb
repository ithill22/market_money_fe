require 'pry'
require 'faraday'
require 'json'

def conn
  Faraday.new(url: 'http://localhost:3000/api/v0/')
end

markets = JSON.parse(conn.get('markets').body, symbolize_names: true)
market = JSON.parse(conn.get('markets/322482').body, symbolize_names: true)
market_vendors = JSON.parse(conn.get('markets/322482/vendors').body, symbolize_names: true)
vendor = JSON.parse(conn.get('vendors/56282').body, symbolize_names: true)

require 'pry'; binding.pry