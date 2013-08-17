class Product < ActiveRecord::Base
  belongs_to :type
  belongs_to :company

  def name
    "#{company.name} #{quantity} count #{type.name} ($#{per_unit.round(2)} per unit)"
  end

  def per_unit
    price / quantity
  end

end
