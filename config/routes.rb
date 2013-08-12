MusicApp::Application.routes.draw do
  resources :bands
  resources :notes, :only => [:create, :destroy]
  resources :users, :only => [:create, :destroy]

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'

  resources :albums do
    resources :tracks, :except => [:index]
  end

  resource :session, :only => [:create, :new, :destroy]
end
