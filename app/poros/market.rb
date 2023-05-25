class Market
  attr_reader :id, :name, :street, :city, :county, :state, :zip, :lat, :lon, :vendor_count, :address

  def initialize(market_data)
    @id = market_data[:id]
    attributes = market_data[:attributes]
    @name = attributes[:name]
    @street = attributes[:street]
    @city = attributes[:city]
    @county = attributes[:county]
    @state = attributes[:state]
    @zip = attributes[:zip]
    @lat = attributes[:lat]
    @lon = attributes[:lon]
    @vendor_count = attributes[:vendor_count]
  end

  def address
    "#{street}, #{city}, #{state} #{zip}"
  end
end