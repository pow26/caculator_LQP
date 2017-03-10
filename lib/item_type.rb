require '../lib/tax_unit'
class ItemType

  attr_accessor :name, :tax_unit

  # Beauty
  def self.other()
    self.new('other', TaxUnit.salesItem)
  end

  # exempt
  def self.exempt()
    self.new('exempt', TaxUnit.exemptItem)
  end

  def initialize (name, tax_unit)
    @name = name
    @tax_unit = tax_unit
  end

  def calculatePriceTax (price)
    @tax_unit.calculatePriceTax(price)
  end

end
