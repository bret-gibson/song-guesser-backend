Rails.application.routes.draw do
  resources :game_songs
  resources :songs
  resources :game_sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end