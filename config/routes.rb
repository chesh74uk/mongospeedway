Rails.application.routes.draw do

  root "meetings#index"
  resources :meetings do
    resources :heats, shallow: true
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
