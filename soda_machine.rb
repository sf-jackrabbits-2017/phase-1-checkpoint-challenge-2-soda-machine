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
      result = @sodas.select!{|soda| soda == soda_brand }.first
      result
  end

  def sell(soda_brand)
    if find_soda
      #sell a soda with given brand
      #remove soda from sodas hash
      @sodas.delete(soda_brand)
      #price of soda add to cash hash
      @cash << #@sodas.price
    end

  end

end
