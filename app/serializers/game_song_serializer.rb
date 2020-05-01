class GameSongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :game_session, :song, :correct_guess
end
