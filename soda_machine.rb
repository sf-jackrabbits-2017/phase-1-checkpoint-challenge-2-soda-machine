require_relative 'soda.rb'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = nil
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      elsif soda == sodas[-1]
        return nil
      end
    end
  end

  def sell(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        @sold_soda = soda
        @cash += @sold_soda.price
        puts "item being deleted: #{@sodas[@sodas.index(soda)]}"
        @sodas.delete(@sodas.index(soda))
        puts "@soda after item is deleted"
        return @sold_soda
      elsif soda == sodas[-1]
        return nil
      end
    end
  end

end

# # TESTING
soda_machine_test = SodaMachine.new(sodas: [Soda.new(brand: 'Pepsi', price: 0.65), Soda.new(brand: 'Mountain Dew', price: 0.75), Soda.new(brand: 'Coke Zero', price: 1.00), Soda.new(brand: 'Pepsi', price: 0.65)], cash: 1.00)

soda_machine_test.sell("Coke Zero")