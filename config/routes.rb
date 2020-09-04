Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  shallow do
    resources :games do
      resources :gamers
      resources :pool
        resources :player_pools
    end
  end

  resources :users
  resources :players
end
