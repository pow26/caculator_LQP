require 'rspec'
require_relative '../lib/order'
require_relative '../lib/item_type'
require_relative '../lib/item_catalogue'
describe 'output1' do

  items = [
      {qty:1, name:'imported box of chocolates', price:10.00, type:ItemType.exempt, unit:ItemCatalogue.import},
      {qty:1, name:'imported bottle of perfume', price:47.50, type:ItemType.other, unit:ItemCatalogue.import}
  ]
  order = Order.new(items)
  it 'should display the list of items' do
    order.printOutput
    order.list_out.should == ["1, imported box of chocolates, 10.50", "1, imported bottle of perfume, 54.65", "Sales Taxes: 7.65", "Total: 65.15"]
  end
end