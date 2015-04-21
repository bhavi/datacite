Datacite::Engine.routes.draw do
  root to: "resources#index"
  resources :resources
end
