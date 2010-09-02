class FuelType
  TYPES = { :diesel => "distillate fuel oil 2", :gasoline => "conventional motor gasoline"}
  attr_reader :name, :fancy_name
  alias :to_s :name

  def initialize
    @name, @fancy_name = TYPES.to_a.sample
  end
end
