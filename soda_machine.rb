class SodaMachine < Soda
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    # p @sodas
    @sodas.length
  end

  def find_soda(soda_brand)
    # p "These are the sodas available: "
    # p "This is the soda brand to look for: #{soda_brand}"
    @sodas.each {|soda| return soda if soda.brand == soda_brand}
    nil
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      @cash += find_soda(soda_brand).price
      @sodas.delete(find_soda(soda_brand))
    else
      nil
    end
  end

end
