Rails.application.routes.draw do
  get 'songs/dummy_songs', to: 'songs#dummy_songs'
  get 'songs/answer_songs', to: 'songs#answer_songs'
  post '/game_sessions', to: 'game_sessions#create'

  resources :game_songs
  resources :songs
  resources :game_sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
