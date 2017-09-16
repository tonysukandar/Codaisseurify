class Api::ArtistsController < ApplicationController

  def index
    render status: 200, json: {
      artists: Artist.all
    }.to_json
  end

  def show
    artist = Artist.find(params[:id])

    render status: 200, json: {
      artist: artist
    }.to_json
  end

end
