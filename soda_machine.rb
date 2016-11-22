class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.size
  end

  def find_soda(soda_brand)
    #p @sodas
    #p soda_brand
    @sodas.find do |soda|
      soda.brand == soda_brand
    end
  end

  def sell(soda_brand)
    #p @sodas

    sold_soda = find_soda(soda_brand)
    #p sold_soda
    #p soda_brand
    if !sold_soda.nil?
      @cash = @cash + sold_soda.price
      @sodas.delete(sold_soda)
    else
    end
  end

end
