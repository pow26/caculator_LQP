require 'rspec'
require_relative '../lib/order'
require_relative '../lib/item_type'
require_relative '../lib/item_catalogue'
describe 'output1' do

  items = [
      {qty:1, name:'book', price:12.49, type:ItemType.exempt, unit:ItemCatalogue.inland},
      {qty:1, name:'music cd', price:14.99, type:ItemType.other, unit:ItemCatalogue.inland},
      {qty:1, name:'chocolate bar', price:0.85, type:ItemType.exempt, unit:ItemCatalogue.inland}
  ]
  order = Order.new(items)
  it 'should display the list of items' do
    order.printOutput
    order.list_out.should == ["1, book, 12.49", "1, music cd, 16.49", "1, chocolate bar, 0.85", "Sales Taxes: 1.50", "Total: 29.83"]
  end
end