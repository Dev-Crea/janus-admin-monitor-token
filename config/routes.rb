JanusAdminMonitorToken::Engine.routes.draw do
  resources :tokens, only: [:index, :new, :create]
end
