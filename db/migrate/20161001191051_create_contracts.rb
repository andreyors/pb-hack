class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :product_id
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.boolean :status

      t.timestamps null: false
    end
  end
end
