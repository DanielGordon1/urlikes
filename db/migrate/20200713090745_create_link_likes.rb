class CreateLinkLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :link_likes do |t|
      t.references :nerd, null: false, foreign_key: true
      t.references :link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
