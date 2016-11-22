require_relative 'soda'

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
    @soda.detect { soda_brand }
  end

  #Checks if soda_brand is included within the array. If soda is included within the array delete that instance of that element and return that instance that was deleted. Else return nil.
  def sell(soda_brand)
    if @sodas.include?(soda_brand)
      @sodas.delete(soda_brand)
    end
  end

  #get the instance of soda_brand that was deleted and get the cost of that soda and add it the cash array
  def cash
    @soda
  end

  #Check each element within the array.
  def sodas
    @sodas
  end
end
