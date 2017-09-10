class SongsController < ApplicationController
  before_action :get_artist

  def index
      @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(@song.artist), notice: "Song successfully removed"
  end

  private

  def song_params
    params
      .require(:song)
      .permit(
        :song_name, :release_year, :genre
      )
  end

  def get_artist
    @artist = Artist.find(params[:artist_id])
  end

  def artist_params
    params
      .require(:artist)
      .permit(:name, :picture, :artist_id)
  end
end
