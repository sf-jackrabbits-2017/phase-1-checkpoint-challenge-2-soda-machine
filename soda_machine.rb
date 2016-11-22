class SodaMachine
  attr_reader :sodas, :cash, :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    # @sold_soda = []
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find do |soda| soda.brand == soda_brand
    end
  end

  def sell(soda_brand)
    # p "SODA BRAND () ---------"
    # p soda_brand
    # p "FIND SODA--------------"
    # found_it = find_soda(soda_brand)
    # p found_it
    found_it = find_soda(soda_brand)
    if found_it
      @sold_soda = found_it
      @cash += @sold_soda.price
      @sodas.delete(@sold_soda)
    # p "SOLD SODA--------------"
    # p @sold_soda
    end
  end

end
