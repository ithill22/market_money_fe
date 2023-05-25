class Vendor
  attr_reader :id, :name, :description, :contact_name, :contact_phone, :credit_accepted

  def initialize(vendor_data)
    @id = vendor_data[:id]
    attributes = vendor_data[:attributes]
    @name = attributes[:name]
    @description = attributes[:description]
    @contact_name = attributes[:contact_name]
    @contact_phone = attributes[:contact_phone]
    @credit_accepted = attributes[:credit_accepted]
  end

  def formatted_credit_accepted
    credit_accepted ? 'Yes' : 'No'
  end
end