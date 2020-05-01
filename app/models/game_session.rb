class GameSession < ApplicationRecord
    has_many :game_songs
    has_many :songs, through: :game_songs
end
