class GameSessionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :points, :songs, :game_songs, :user
end
