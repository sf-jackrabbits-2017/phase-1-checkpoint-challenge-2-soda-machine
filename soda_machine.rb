require_relative 'soda'

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
    @sodas.select{|soda| soda.brand == soda_brand}[0]
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    return soda if soda == nil
    @cash += soda.price
    @sodas.delete(soda)
  end

end
