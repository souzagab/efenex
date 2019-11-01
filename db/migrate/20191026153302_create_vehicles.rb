class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.string :brand
      t.string :year
      t.string :model
      t.integer :value
      t.string :img_url

      t.timestamps
    end
  end
end
