MusicApp::Application.routes.draw do
  resources :bands

  resources :albums do
    resources :tracks, :except => [:index]
  end
end
