class SaleTable < ActiveRecord::Base
  attr_accessible :commodity, :farmer_name, :location, :market_type, :price_receiptUnit, :price_received, :quality, :sale_date, :string, :unit, :volume
end
