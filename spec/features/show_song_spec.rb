require 'rails_helper'

	describe "Showing the songs" do
    let(:artist) { create :artist }
    let(:other_artist) { create :artist }

	  let!(:song1) { create :song, song_name: "Song title 1", artist: artist }
	  let!(:song2) { create :song, song_name: "Song title 2", artist: artist }
	  let!(:song3) { create :song, song_name: "Song title 3", artist: artist }
    let!(:song4) { create :song, song_name: "Song title 4", artist: other_artist }

	  it "shows all the songs" do
	    visit artist_path(artist.id)

	    expect(page).to have_text("Song title 1")
	    expect(page).to have_text("Song title 2")
      expect(page).to have_text("Song title 3")
#      expect(page).to have_text("Song title 4")

	  end
	end
