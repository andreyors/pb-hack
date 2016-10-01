class CreateFieldHasValues < ActiveRecord::Migration
  def change
    create_table :field_has_values do |t|
      t.integer :field_id
      t.integer :user_id
      t.string :value

      t.timestamps null: false
    end
  end
end
