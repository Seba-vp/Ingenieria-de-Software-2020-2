class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :max_cap
      t.float :price
      t.string :picture
      t.integer :stars

      t.timestamps
    end
  end
end
