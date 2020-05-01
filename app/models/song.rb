class Song < ApplicationRecord
    has_many :game_songs
    has_many :game_sessions, through: :game_songs
end
