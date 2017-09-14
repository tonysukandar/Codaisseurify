require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do

    it "is invalid without song name" do
      song = Song.new(song_name:"")
      song.valid?
      expect(song.errors).to have_key(:song_name)
    end

  end

  describe "song association with artist" do
    let(:artist) { create :artist }

    it "belongs to artist" do
      song = artist.songs.new

      expect(song.artist).to eq(artist)
    end

  end

end
