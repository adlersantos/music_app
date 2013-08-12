MusicApp::Application.routes.draw do
  resources :bands
  resources :notes, :only => [:create, :destroy]

  resources :albums do
    resources :tracks, :except => [:index]
  end
end
