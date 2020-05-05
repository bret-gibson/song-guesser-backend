class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :game_sessions
end
