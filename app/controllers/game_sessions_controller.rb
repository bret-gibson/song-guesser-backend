class GameSessionsController < ApplicationController

    def index
        game_sessions = GameSession.all
        render json: GameSessionSerializer.new(game_sessions)
    end

    def show
        game_session = GameSession.find(params[:id])
        render json: GameSessionSerializer.new(game_session)
    end

    def create
        game_session = GameSession.create()

        # render json: GameSessionSerializer.new(game_session)
    end

    def last
        last = GameSession.last
        render json: GameSessionSerializer.new(last)
    end

    def update
        # byebug
        game_session = GameSession.find(params[:id])
        game_session.update(points: params["game_session"]["points"])
    end

    # def updateLast
    #     last = GameSession.last
    #     render json: GameSessionSerializer.new(last)
    # end
end

