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
    @sodas.find { |soda| soda == soda_brand}
    # @sodas.include? soda_brand
    #   soda_brand
    # else
    #   nil
  end

  def sell(soda_brand)

  end

end
