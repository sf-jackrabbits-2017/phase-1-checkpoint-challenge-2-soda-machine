class SodaMachine
  attr_reader :sodas, :cash, :brand

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length 
  end

  def find_soda(soda_brand)
    brand_array = @sodas.select { |soda| soda.brand == soda_brand}
    brand_array.first
  end

  def sell(soda_brand)
    sold_soda = find_soda(soda_brand)
    if sold_soda != nil
      @cash += sold_soda.price
      @sodas.delete(sold_soda)
    end
  end

end
