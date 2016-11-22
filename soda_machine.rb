class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    # A soda machine will be able to return the number of sodas it contains.
    @sodas.length
  end

  def find_soda(soda_brand)
    # A soda machine will be able to find a single soda with a given brand.
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    # A soda machine will be able to sell a soda with a given brand. 
   sell_soda = find_soda(soda_brand)
   return nil if sell_soda == nil
   # When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the  soda machine's cash.
   @cash += 
  end

end
