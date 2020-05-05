Rails.application.routes.draw do

  get 'songs/dummy_songs', to: 'songs#dummy_songs'
  get 'songs/answer_songs', to: 'songs#answer_songs'
  post '/game_sessions', to: 'game_sessions#create'
  get 'game_sessions/last', to: 'game_sessions#last'
  get 'game_sessions/top_scores', to: 'game_sessions#top_scores'
  get 'game_songs/last', to: 'game_songs#last'
  # patch 'game_songs/last', to: 'game_songs#last'
  post '/game_songs', to: 'game_songs#create'

  resources :game_songs
  resources :songs
  resources :game_sessions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
