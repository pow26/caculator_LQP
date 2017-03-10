class ItemCatalogue
  attr_accessor :name, :tax_unit

  # Beauty
  def self.inland()
    self.new('inland', TaxUnit.exemptItem)
  end

  # Book
  def self.import()
    self.new('imported', TaxUnit.importItem)
  end

  def initialize (name, tax_rate)
    @name = name
    @tax_unit = tax_rate
  end

  def calculatePriceTax (price)
    @tax_unit.calculatePriceTax(price)
  end
end

