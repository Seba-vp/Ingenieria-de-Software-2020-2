class CreateInteresteds < ActiveRecord::Migration[5.2]
  def change
    create_table :interesteds do |t|
      t.integer :user_id
      t.integer :party_id
      t.float :willing_pay
      t.string :code

      t.timestamps
    end
  end
end
