class AddImageLinkToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :image_link, :string
  end
end
