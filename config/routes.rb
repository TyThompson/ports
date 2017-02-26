Rails.application.routes.draw do
  root to: 'home#index'
  resources :games do
    resources :ports
  end
  get  "/tools" => "tools#index"
end
