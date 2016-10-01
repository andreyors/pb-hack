class CreateProductHasFields < ActiveRecord::Migration
  def change
    create_table :product_has_fields do |t|
      t.integer :product_id
      t.integer :field_id

      t.timestamps null: false
    end
  end
end
