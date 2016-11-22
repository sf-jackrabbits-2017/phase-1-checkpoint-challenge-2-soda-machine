class SodaMachine
  require_relative 'soda'

  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    nil unless
      @sodas.each do |soda|
        if soda.brand == soda_brand
          return soda
        end
      end
  end

  def sell(soda_brand)
  end

end
