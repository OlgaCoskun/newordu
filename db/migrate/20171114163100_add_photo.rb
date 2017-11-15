class AddPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :galeri, :string
  end
end
