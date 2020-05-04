class SongsController < ApplicationController

    def index
        songs = Song.all
        render json: SongSerializer.new(songs)
    end

    def show
        song = Song.find(params[:id])
        render json: SongSerializer.new(song)
    end

    def dummy_songs
        dummy_songs = Song.where(dummy: true)
        render json: SongSerializer.new(dummy_songs)
    end
    def answer_songs
        usable_songs = Song.where(dummy: false)
        render json: SongSerializer.new(usable_songs)
    end
end
