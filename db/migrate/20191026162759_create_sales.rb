class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.references :user, foreign_key: true
      t.references :broker, foreign_key: true
      t.integer :vehicle_id
      t.integer :old_owner

      t.timestamps
    end
    add_foreign_key :sales, :vehicles
  end
end
