class SaveTable < ActiveRecord::Base
  attr_accessible :commodity, :location, :market_type, :price_receiptUnit, :price_received, :quality, :sale_date, :string, :unit, :volume
end
