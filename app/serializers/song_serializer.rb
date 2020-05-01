class SongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :artist, :genre, :source, :dummy, :game_sessions, :game_songs
end
