class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :picture
      t.integer :id_comuna
      t.float :base_cost
      t.float :total_cost
      t.integer :max_cap
      t.datetime :date
      t.datetime :date_final

      t.timestamps
    end
  end
end
