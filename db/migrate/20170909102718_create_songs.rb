class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.integer :release_year

      t.timestamps
    end
  end
end
