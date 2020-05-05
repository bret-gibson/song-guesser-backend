class GameSongsController < ApplicationController
    def index
        game_songs = GameSong.all
        render json: GameSongSerializer.new(game_songs)
    end

    def show
        game_song = GameSong.find(params[:id])
        render json: GameSongSerializer.new(game_song)
    end

    def create
        # byebug
        game_song = GameSong.create(game_session_id: params[:game_session_id], song_id: params[:song_id], correct_guess: params[:correct_guess])
    end

end
