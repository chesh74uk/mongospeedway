Rails.application.routes.draw do
  

  root "meetings#index"
  
  
  
  resources :meetings do
    resources :heats
    resources :home_riders
    resources :away_riders
    get 'static_pages/rider'
    get 'static_pages/gate'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
