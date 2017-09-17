class Api::SongsController < ApplicationController

  before_action :set_song, only: [:edit, :update, :destroy, :destroy_all]
  before_action :get_artist

  def index
    render status: 200, json: {
      songs = Song.all
    }.to_json
  end

  def new
    render status: 200, json: {
      song = Song.new
    }.to_json
  end

  def edit
  end

  # def update
  #     if @song.update(song_params)
  #       redirect_to artist_path(@song.artist), notice: "Song successfully updated"
  #     else
  #       render :edit
  #     end
  # end

  def create
    song = @artist.songs.new(song_params.merge(artist_id: params[:artist_id]))#
    if song.save
      render status: 201, json: {
        message: "Song successfully created",
        song: song
      }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = @artist.songs.find(params[:id])
    song.destroy
    render status: 200, json: {
      message: 'Song successfully deleted'
    }.to_json
  end

  def destroy_all
    if @artist.songs.destroy_all
      render status: 200, json: {
        notice: "All songs were deleted"
      }.to_json
    else
      render status: :unprocessable_entity, json: {
        errors: @artist.errors
      }.to_json
    end
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


end
