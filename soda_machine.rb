class SodaMachine < Soda #--> SodaMachine is under Soda class
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|         # Iterate through each soda instance and
      if soda.brand == soda_brand #    determine if there's a soda that
      	return soda 			  #       corresponds with the brand being called for
      end
    end
  	nil # Why do we have to put nil outside of iterator for it to work?
  end	#    Why can't we return nil in else condition inside each iterator?

  def sell(soda_brand)
    @sodas.each do |soda|
    	if soda.brand == soda_brand # If there's a soda that corresponds with the brand being called for
    		@cash += soda.price		#    add price of soda sold to cash,
    		@sodas.delete(soda)		#       remove soda from soda machine,
    		return soda 			#          and return the sold soda
    	end
    end
    nil # Why do we have to put nil outside of iterator for it to work?
  end   #    Why can't we return nil in else condition inside each iterator?

end

