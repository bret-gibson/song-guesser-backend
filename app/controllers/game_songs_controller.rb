class GameSongsController < ApplicationController
    def index
        game_songs = GameSong.all
        render json: GameSongSerializer.new(game_songs)
    end

    def show
        game_song = GameSong.find(params[:id])
        render json: GameSongSerializer.new(game_song)
    end

end
