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
        game_session = GameSession.create(user_id: params["user_id"])
        render json: GameSessionSerializer.new(game_session)
    end

    def last
        last = GameSession.last
        render json: GameSessionSerializer.new(last)
    end

    def update
        game_session = GameSession.find(params[:id])
        game_session.update(points: params["game_session"]["points"])
    end


    def top_scores
        game_sessions = GameSession.all
        sorted = game_sessions.sort_by{|key| key["points"]}
        reverse_sorted = sorted.reverse
        # byebug
        top_five = reverse_sorted.slice(0, 5)
        render json: GameSessionSerializer.new(top_five)
        # render json: sorted.as_json
        # (only: [:id, :user_id, :names, :points])
    
    end

    # def updateLast
    #     last = GameSession.last
    #     render json: GameSessionSerializer.new(last)
    # end
end

