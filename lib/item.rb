class Item
  attr_accessor :price, :item_type, :item_catalogue

  def initialize (price, item_type, item_catalogue)
    @price = price
    @item_type = item_type
    @item_catalogue = item_catalogue
  end

  def calculate
    (((@item_type.calculatePriceTax(@price) + item_catalogue.calculatePriceTax(@price))*20).ceil).to_f/20.0
  end
end

