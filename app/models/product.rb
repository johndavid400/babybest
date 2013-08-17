class Product < ActiveRecord::Base
  belongs_to :type
  belongs_to :brand
  belongs_to :store

  def name
    store_name = "from #{store.name}" if store
    "#{brand.name} #{quantity} count #{type.name} #{store_name if store_name} ($#{per_unit.round(2)} per unit)"
  end

  def per_unit
    price / quantity
  end

end
