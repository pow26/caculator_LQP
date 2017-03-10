require '../lib/item'
class Order
  attr_accessor :quantity, :items, :total_price, :total_tax, :total, :list_out

  def initialize (items)
    @items = items
    @list_out = []
  end

  def printOutput()
    calculateItem(@items,@list_out)
    return @list_out
  end

  def calculateItem(items, list)
    total_tax = 0
    total = 0
    items.each do |item|
      item_p = Item.new(item[:price],item[:type],item[:unit])
      qty = item[:qty]
      price_tax = (item_p.calculate).to_f * qty
      price = item_p.price.to_f * qty
      total_price = price_tax + price
      total_tax = total_tax + price_tax
      total = total + total_price
      list << "#{item[:qty]}, #{item[:name]}, #{"%.2f" % total_price}"
    end
    list << "Sales Taxes: #{"%.2f" % total_tax}"
    list << "Total: #{"%.2f" % total}"
  end

end

