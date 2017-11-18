class AddAvatarToGaleris < ActiveRecord::Migration[5.1]
  def change
    add_column :galeris, :avatar, :string
  end
end
