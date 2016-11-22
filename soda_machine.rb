require_relative 'soda'

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
    available_soda = []
    @sodas.each do |soda|
      if soda.brand == soda_brand
        available_soda << soda
      end
    end
    available_soda[0]
  end

  def sell(soda_brand)
  end

end

# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
# mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
#
# soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew], cash: 1.00)
#
# soda_machine.find_soda('Pepsi')
