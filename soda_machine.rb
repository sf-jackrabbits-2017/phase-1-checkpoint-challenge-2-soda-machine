require_relative 'soda.rb'

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
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        nil
      end
    end
  end

  def sell(soda_brand)
  end

end

#TESTING
# soda_machine_test = SodaMachine.new(sodas: [Soda.new(brand: 'Pepsi', price: 0.65), Soda.new(brand: 'Mountain Dew', price: 0.75), Soda.new(brand: 'Coke Zero', price: 1.00), Soda.new(brand: 'Pepsi', price: 0.65)], cash: 1.00)

# soda_machine_test.find_soda("Coke Zero")