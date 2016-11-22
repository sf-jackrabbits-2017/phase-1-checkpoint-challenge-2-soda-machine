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
    @sodas.select{|soda| soda.brand == soda_brand}[0] #NB: this will only work if there is a single soda of that soda brand
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    return soda if soda == nil #returns nil if soda can't be found
    @cash += soda.price
    @sodas.delete(soda) #implicitly returns the soda sold
  end

end
