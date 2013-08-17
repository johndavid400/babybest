class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :company_id
      t.integer :type_id
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
