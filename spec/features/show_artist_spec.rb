require 'rails_helper'

describe "Viewing an artist" do
	  let(:artist) { create :artist }

	  it "shows artist's details" do
	    visit artist_url(artist)

	    expect(page).to have_text(artist.name)
	  end

end
