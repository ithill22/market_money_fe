class Vendor
  attr_reader :name, :description, :contact_name, :contact_phone, :credit_accepted

  def initialize(vendor_data)
    attributes = vendor_data[:attributes]
    @name = attributes[:name]
    @description = attributes[:description]
    @contact_name = attributes[:contact_name]
    @contact_phone = attributes[:contact_phone]
    @credit_accepted = attributes[:credit_accepted]
  end
end