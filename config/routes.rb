Rails.application.routes.draw do
  root 'home#top'
  get 'top', to: 'home#top'
  get 'about', to: 'home#about'
  get 'posts/new', to: 'posts#new'
  post 'posts/create', to: 'posts#create'
  get 'posts/index', to: 'posts#index'
  get 'posts/:id', to: 'posts#show', as: :post
end