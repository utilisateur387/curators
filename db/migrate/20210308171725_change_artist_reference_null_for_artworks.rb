class ChangeArtistReferenceNullForArtworks < ActiveRecord::Migration[6.0]
  def change
    change_column_null :artworks, :artist_id, true
  end
end
