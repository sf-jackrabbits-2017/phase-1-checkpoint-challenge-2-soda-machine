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
    soda_location = @sodas.find_index{|soda| soda.brand == soda_brand }
    if soda_location.is_a? Integer
      @sodas[soda_location]
    end
  end

  def sell(soda_brand)
    soda = @sodas.find{ |soda| soda.brand == soda_brand}
    if soda != nil
      @cash += soda.price
      @sodas.delete(soda)
    end
  end

end
