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
    @sodas.find{|num| num.brand == soda_brand}
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      find_soda(soda_brand)
      @cash = @cash + soda.price
      @soda.delete(soda)
    else
      "no soda available!"
      nil
  end
end

# arr_soda =
# [
# Soda.new(brand: 'Pepsi', price: 0.65),
# Soda.new(brand: 'Mountain Dew', price: 0.75),
# Soda.new(brand: 'Coke Zero', price: 1.00),
# Soda.new(brand: 'Pepsi', price: 0.65)
# ]



# sm = SodaMachine.new(sodas: arr_soda, cash: 1.00)
# p sm.sodas
