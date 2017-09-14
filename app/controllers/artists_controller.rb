class ArtistsController < ApplicationController
before_action :set_artist, only: [:show, :destroy]
  def show
    @songs = @artist.songs.all
    @photos = @artist.photos
end

  def index
    @artists = Artist.all
  end

 def destroy
   @artist.destroy
   redirect_to root_path, notice: "Artist successfully removed"
 end

private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params
      .require(:artist)
      .permit(:name, :picture, :artist_id)
  end

end
