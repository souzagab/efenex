class CreateBrokers < ActiveRecord::Migration[5.1]
  def change
    create_table :brokers do |t|
      t.string :name
      t.integer :sales
      t.string :avatar
      t.string :bg_img

      t.timestamps
    end
  end
end
