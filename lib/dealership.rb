class Dealership
  attr_accessor :inventory, :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def inventory
    @inventory
  end

  def inventory_count
    @inventory_count
  end

  def add_car(car)
    @inventory_count += 1
    @inventory << car
  end

  def has_inventory?
    if @inventory_count >= 1
     return true
    else 
      false
    end
  end

  def cars_by_make(make)
    cars_by_make = []
    @inventory.map do |car|
      if car.make == make
        cars_by_make << car
      end
    end
    cars_by_make
  end

  def total_value
   @total_value = @inventory.inject(0) {|sum, car| sum + car.total_cost}
  end

  def details
    details = {
      "total_value"=>@total_value,
      "address"=>@address
    }

  end
end