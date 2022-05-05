Rails.application.routes.draw do
  root 'home#top'
  get 'top', to: 'home#top'
  get 'about', to: 'home#about'
  get 'posts/index', to: 'posts#index'
  get 'posts/:id', to: 'posts#show'
end