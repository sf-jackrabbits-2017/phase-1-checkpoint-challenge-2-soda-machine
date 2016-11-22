class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda if soda.brand == soda_brand}
  end

  def sell(soda_brand)
    sold = find_soda(soda_brand)
    if sold
      @sodas.delete(sold)
      @cash += sold.price
    else
      nil
    end
    sold
  end

end
