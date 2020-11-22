Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post    '/login'    => 'sessions#create'
  delete  '/logout'   => 'sessions#destroy'
  post    '/signup'   => 'users#create'

  resource :profile, except: %i[index create], controller: :users

  resources :categories do
    resources :transactions
  end

  resources :transactions
end
