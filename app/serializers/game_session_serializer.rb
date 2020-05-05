class GameSessionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :points, :songs, :game_songs, :user

  #  top_score_serializer = GameSessionSerializer.new(game_session, { fields: { game_session: [:points] } })
  #  top_score_serializer.serializable_hash
end
