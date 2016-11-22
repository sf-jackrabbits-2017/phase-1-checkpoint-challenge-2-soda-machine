class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    p @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each do |brand|
      if @sodas == brand
        p brand.parameterize.underscore.to_sym
        #puts "#{soda_brand}"
      else
        puts "Sorry, the soda you requested is not available."
        return nil
      end
    end
  end

  def sell(soda_brand)
    @sodas.each do |brand|
      if @sodas != brand
        puts "Sorry, the soda you requested is not available."
        return nil
      else
        @sodas.has_value?(brand)
        puts "#{soda_brand}"
        @cash[@soda] = @price
        sum = 0
        @cash.each { |key, value| sum += value.last }
        @sodas.delete(brand)
      end
    end
  end
end
