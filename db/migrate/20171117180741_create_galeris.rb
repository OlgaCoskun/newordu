class CreateGaleris < ActiveRecord::Migration[5.1]
  def change
    create_table :galeris do |t|
      t.string :title

      t.timestamps
    end
  end
end
