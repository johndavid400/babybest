class ChangeCompanyIdToBrandIdOnProducts < ActiveRecord::Migration
  def change
    rename_column :products, :company_id, :brand_id
  end
end
