class AddColumnToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :notes, :text
  end
end
