require 'rspec'
require_relative '../lib/order'
require_relative '../lib/item_type'
require_relative '../lib/item_catalogue'
describe 'output1' do

  items = [
      {qty:1, name:'imported bottle of perfume', price:27.99, type:ItemType.other, unit:ItemCatalogue.import},
      {qty:1, name:'bottle of perfume', price:18.99, type:ItemType.other, unit:ItemCatalogue.inland},
      {qty:1, name:'packet of headache pills', price:9.75, type:ItemType.exempt, unit:ItemCatalogue.inland},
      {qty:1, name:'box of imported chocolates', price:11.25, type:ItemType.exempt, unit:ItemCatalogue.import}
  ]
  order = Order.new(items)
  it 'should display the list of items' do
    order.printOutput
    order.list_out.should == ["1, imported bottle of perfume, 32.19", "1, bottle of perfume, 20.89", "1, packet of headache pills, 9.75", "1, box of imported chocolates, 11.85", "Sales Taxes: 6.70", "Total: 74.68"]
  end
end