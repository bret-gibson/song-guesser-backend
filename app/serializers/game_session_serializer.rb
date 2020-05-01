class GameSessionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :songs, :game_songs
end
