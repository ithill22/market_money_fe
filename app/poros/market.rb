class Market
  attr_reader :name, :street, :city, :county, :state, :zip, :lat, :long, :vendor_count

  def initialize(market_data)
    attributes = market_data[:attributes]
    @name = attributes[:name]
    @street = attributes[:street]
    @city = attributes[:city]
    @county = attributes[:county]
    @state = attributes[:state]
    @zip = attributes[:zip]
    @lat = attributes[:lat]
    @long = attributes[:long]
    @vendor_count = market_data[:vendor_count]
  end
end