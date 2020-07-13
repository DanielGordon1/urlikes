class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.references :nerd, null: false, foreign_key: true

      t.timestamps
    end
    add_index :links, :title, unique: true
  end
end
