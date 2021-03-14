class AddColumnUrlToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :url, :string
  end
end
