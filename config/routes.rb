Datacite::Engine.routes.draw do
  root to: "creators#index"
  resources :creators

end
