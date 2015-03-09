class Address
  def initialize
    @street = ""
  end
  def street
    @street           # return street => attr_reader :street
  end
  def street=(street)
    @street = street  # rewrites street => attr_writer :street
  end
end

address = Address.new
address.street = "Hell's Street"
puts address.street

# When a property of an object is a readable atribute to be
# returned and rewritten, we can use attr_accessor like this:

class Address
  attr_accessor :street, :city, :state
  def initialize
    @street, @city, @state = ""
  end
end
