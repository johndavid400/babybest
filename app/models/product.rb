class Product < ActiveRecord::Base
  belongs_to :type
  belongs_to :company
  belongs_to :store

  def name
    store_name = "from #{store.name}" if store
    "#{company.name} #{quantity} count #{type.name} #{store_name if store_name} ($#{per_unit.round(2)} per unit)"
  end

  def per_unit
    price / quantity
  end

end
