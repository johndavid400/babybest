class RenameCompaniesToBrands < ActiveRecord::Migration
  def change
    rename_table :companies, :brands
  end
end
