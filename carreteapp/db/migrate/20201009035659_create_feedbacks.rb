class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.text :comment
      t.integer :stars
      t.integer :service_id

      t.timestamps
    end
  end
end
