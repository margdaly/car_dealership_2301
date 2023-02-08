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
    @inventory.select{|make| make == @car.make}
  end

  def total_value
    
  end

  def details

  end
end