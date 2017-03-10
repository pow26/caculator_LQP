class TaxUnit
  attr_accessor :name, :unit

  private def initialize(name, unit)
    @name = name
    @unit = unit
  end

  def calculatePriceTax(price)
    price * @unit
  end

  def self.exemptItem()
    TaxUnit.new('exempt', 0.0)
  end

  def self.salesItem()
    TaxUnit.new('sales tax', 0.1)
  end

  def self.importItem()
    TaxUnit.new('import', 0.05)
  end
end

