Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles
  resources :authors
  resources :instant_articles, only: [:index, :show]
end
