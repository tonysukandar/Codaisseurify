class SongsController < ApplicationController
  def index
    @songs = @artist.songs
  end

  #before_action :get_artist

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

  # def create
  #   song_params = params.require(:song).permit(:title, :artist)
  #   @song = Song.new(song_params.merge(artist: params[:artist]))
  #   if @song.save
  #     redirect_to artist_path(@song.artist), notice: "Song  successfully added"
  #   else
  #     render :new
  #   end
  # end

  private

  def get_artist
    @artist = Artist.find(params[:artist_id])
  end


    def artist_params
      params
        .require(:artist)
        .permit(:name, :picture, :artist_id)
    end
end
