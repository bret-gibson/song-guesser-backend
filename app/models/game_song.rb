class GameSong < ApplicationRecord
  belongs_to :game_session
  belongs_to :song
end
