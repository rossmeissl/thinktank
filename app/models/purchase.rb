class Purchase
  ATTRS = %w(date amount vendor store city fuel_type)
  attr_reader(*ATTRS.map(&:to_sym))
  
  def initialize
    ATTRS.each do |attr|
      instance_variable_set :"@#{attr}", self.class.send(attr.to_sym)
    end
  end
  
  def volume
    price = rand(100) / 100 + 2.5
    amount / price
  end
  
  private
  def self.date
    rand(30) + 1
  end
  
  def self.amount
    rand(18000).to_f / 100 + 20
  end
  
  def self.vendor
    %w(Mobil Amoco Shell BP).sample
  end
  
  def self.store
    rand(1000)
  end
  
  def self.city
    City.new
  end
  
  def self.fuel_type
    %w(Diesel Gasoline).sample
  end
end
