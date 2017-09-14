class SongsController < ApplicationController
  before_action :set_song, only: [:edit, :update, :destroy]
  before_action :get_artist

  def index
      @songs = Song.all
  end

  def new
    @song = Song.new
    @artist = Artist.find(params[:artist_id])
  end

  def edit
    @artist = Artist.find(params[:artist_id])
  end

  def update
      if @song.update(song_params)
        redirect_to artist_path(@song.artist), notice: "Song successfully updated"
      else
        render :edit
      end
  end

  def create
  @song = @artist.songs.new(song_params.merge(artist_id: params[:artist_id]))
  if @song.save
      redirect_to artist_path(@song.artist), notice: "Song successfully created"
    else
      render :new
  end
end

  def destroy
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to artist_path(@song.artist), notice: "Song successfully removed"
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params
      .require(:song)
      .permit(
        :song_name, :release_year, :genre, :artist_id
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
