class City
  attr_reader :name
  alias :to_s :name

  def initialize
    @name = CITIES.sample.humanize
  end
  
  CITIES = %w(new_york los_angeles chicago houston phoenix philadelphia san_antonio san_diego dallas san_jose detroit san_francisco jacksonville austin columbus fort_worth charlotte memphis boston baltimore el_paso seattle denver milwaukee washington las_vegas portland oklahoma_city tucson atlanta albuquerque kansas_city fresno sacramento long_beach mesa omaha virginia_beach miami cleveland oakland raleigh colorado_springs tulsa minneapolis arlington)
end
