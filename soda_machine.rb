require_relative 'soda'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    # A soda machine will be able to return the number of sodas it contains. This method should be called
    length = @sodas.length
    length

  end

  def find_soda(soda_brand)
    # A soda machine will be able to find a single soda with a given brand. This method will be called 
    @sodas.each do |sodas|
      p sodas
    if value == soda_brand
      sodas
    
    else nil 
    end
  end
 
    # @sodas.each do |soda|
    #   p soda 
    #   if soda.brand == soda_brand
    #     p @sodas
    #   end
    # end
  end

  def sell(soda_brand)
    # A soda machine will be able to sell a soda with a given brand. When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the soda machine's cash This method will be called 
  end

end
# soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00) 
# soda_machine.find_soda('Mountain Dew')