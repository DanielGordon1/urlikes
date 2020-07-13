class AddOauthDetailsToNerds < ActiveRecord::Migration[6.0]
  def change
    add_column :nerds, :full_name, :string
    add_column :nerds, :uid, :string
    add_column :nerds, :avatar_url, :string
  end
end
