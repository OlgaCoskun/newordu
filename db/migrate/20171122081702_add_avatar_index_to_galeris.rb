class AddAvatarIndexToGaleris < ActiveRecord::Migration[5.1]
  def change
    add_column :galeris, :avatar_index, :string
    add_index :galeris, :avatar_index
  end
end
