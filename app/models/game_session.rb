class GameSession < ApplicationRecord
    belongs_to :user
    has_many :game_songs
    has_many :songs, through: :game_songs
end
