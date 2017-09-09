class SongsController < ApplicationController
  def index
    @songs = @artist.songs
  end

  def show; end


    private

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params
        .require(:artist)
        .permit(:name, :picture)
    end
end
