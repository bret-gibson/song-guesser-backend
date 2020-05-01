class GameSessionsController < ApplicationController

    def index
        game_sessions = GameSession.all
        render json: GameSessionSerializer.new(game_sessions)
    end

    def show
        game_session = GameSession.find(params[:id])
        render json: GameSongSerializer.new(game_session)
    end
end
