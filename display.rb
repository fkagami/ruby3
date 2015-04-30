class Item
  def initialize(name, cost)
    @name = name
    @price = (cost / 0.6 * 1.05).to_i
  end

  attr_accessor :name
  attr_reader :price
end

item = Item.new("Item a", 600)
puts "items cost is #{item.price}, items name is #{item.name}"

item.name = "AA"
puts "items cost is #{item.price}, items name is #{item.name}"
