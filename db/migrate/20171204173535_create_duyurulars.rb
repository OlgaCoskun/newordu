class CreateDuyurulars < ActiveRecord::Migration[5.1]
  def change
    create_table :duyurulars do |t|
      t.string :title
      t.text :text
      t.integer :user_id

      t.timestamps
    end
  end
end
