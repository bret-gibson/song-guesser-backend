Rails.application.routes.draw do
  get 'songs/dummy_songs', to: 'songs#dummy_songs'

  resources :game_songs
  resources :songs
  resources :game_sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
