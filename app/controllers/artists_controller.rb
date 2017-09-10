class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs.all
#    @songs = Song.all
  end

  def index
    @artists = Artist.all
  end

end
