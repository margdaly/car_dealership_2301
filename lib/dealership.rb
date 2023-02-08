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
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end
end