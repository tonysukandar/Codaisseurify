class ArtistsController < ApplicationController
  # def show
  #   @artist = Artist.find(params[:id])
  #   @songs = @artist.songs.all
  # end
  def index
    @artists = Artist.all
  end

  def show
    @songs = Song.all
  end


end
