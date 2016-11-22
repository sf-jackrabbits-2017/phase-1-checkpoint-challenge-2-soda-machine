class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    # returns the first instance of the soda the user requested
        # instance needs to be created
      soda = Soda.new(soda_brand)
      @sodas.each_key { |key| puts "The soda is #{key}" }


    # return the value of a key
    # @sodas.include?[soda_brand]
    # @sodas.index(soda_brand)
  end

  def sell(soda_brand)
    # Return hash, remove soda brand when from soda machine, add price to soda machines cash
        # push price into cash

    # if @sodas.remove(soda_brand)
    #   true
    #   return @sodas(soda_brand)
    # else
    #   nil
    # end

    # sold_soda = @sodas.remove(soda_brand)
  end

end
