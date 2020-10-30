class AddIdCreatorToParties < ActiveRecord::Migration[5.2]
  def change
    add_column :parties, :id_creator, :int
  end
end
