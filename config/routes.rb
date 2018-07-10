Rails.application.routes.draw do
  get 'heats/new'
  get 'heats/create'
  get 'heats/edit'
  get 'heats/update'
  root "meetings#index"
  resources :meetings
  resources :heats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
