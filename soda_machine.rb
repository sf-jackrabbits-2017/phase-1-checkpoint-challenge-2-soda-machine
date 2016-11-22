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
    self[@sodas].key(soda_brand) #--> Didn't have time to finish
  end

  def sell(soda_brand)
    @sold_soda = self[:sodas].key(soda_brand) #--> Based on previous method, which I didn't have time to finish
    purchased_soda_price = self[]
  end

end

