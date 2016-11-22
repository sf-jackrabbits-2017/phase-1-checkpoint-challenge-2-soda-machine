class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count

    return @sodas.length
  end

  def find_soda(soda_brand)
    # @sodas.index(soda_brand).inspect
    return @sodas.find do |soda|
    soda.brand == soda_brand
    end
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      soda = find_soda(soda_brand)
      @cash += soda.price
      @sodas.delete(soda)
      true
    else
      "cannot sell any more soda"
      nil
    end
  end

end
