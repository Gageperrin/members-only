Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  get '/postsnew', to: 'posts#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'
resources :users
resource :post, only: [:new, :create, :index]
end
