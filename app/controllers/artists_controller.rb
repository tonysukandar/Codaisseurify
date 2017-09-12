class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs.all
#    @songs = Song.all
#    @photos = Photo.all
    @photos = @artist.photos
end

  def index
    @artists = Artist.all
  end

private

  def artist_params
    params
      .require(:artist)
      .permit(:name, :picture, :artist_id)
  end

end
