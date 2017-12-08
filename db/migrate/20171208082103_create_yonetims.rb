class CreateYonetims < ActiveRecord::Migration[5.1]
  def change
    create_table :yonetims do |t|
      t.integer :ny
      t.string :title_y
      t.string :text_y
      t.integer :nu
      t.string :title_u
      t.string :text_u
      t.integer :user_id

      t.timestamps
    end
  end
end
