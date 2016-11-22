class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    count = 0
    @sodas.each do |sub_array|
    sub_array.each_with_index do |item|
      count += 1
      puts item
    end
end

  end

  def find_soda(soda_brand)
    @sodas[soda_brand]
  end

  def sell(soda_brand)
  end

end
