class SongsController < ApplicationController

    def index
        songs = Song.all
        render json: SongSerializer.new(songs)
    end

    def show
        song = Song.find(params[:id])
        render json: SongSerializer.new(song)
    end
end
