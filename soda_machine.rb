# require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args.fetch(:sodas){ sodas = [] }
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length 
  end

  def find_soda(soda_brand)
    # self.@sodas.include?(soda_brand)
    #   @brand
    # end 

    # soda.rb
    # pepsi = Soda.new(brand: 'Pepsi', price: 0.65, age: 1)
    # irb(main):003:0> pepsi.brand 
    # => "Pepsi"
    # irb(main):004:0> pepsi.price 
    # => 0.65

    # soda_machine.rb
    # soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)
  end

  def sell(soda_brand)

  end

end
