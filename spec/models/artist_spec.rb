require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do

    it "is invalid without artist name" do
      artist = Artist.new(name:"")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

  end

  describe "association with songs" do
    let(:artist) {create :artist, name: "A-Ha" }

    let!(:song1) { create :song, song_name: "Song1", release_year: 2012, artist: artist }
    let!(:song2) { create :song, song_name: "Song2", release_year: 2011, artist: artist }

    it "has many songs" do
      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

  end

end
