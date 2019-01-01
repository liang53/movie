Rails.application.routes.draw do
  get 'tvshows/index'

  get 'tvshows/show'

  get 'movies/index'

  get 'movies/show'

  get 'welcome/index'

  get 'welcome/show'
  resources :movies, only: [:index,:show]
  resources :tvshows, only: [:index,:show]
  resources :welcome, only: [:index,:show]

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
