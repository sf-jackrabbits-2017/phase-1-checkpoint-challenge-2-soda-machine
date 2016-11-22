require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = []
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
    if find_soda(soda_brand) == nil
      nil
    else
      @sodas.each do |soda|
        if soda.brand == soda_brand
          p soda.brand
        end
      end
    end
  end

end
