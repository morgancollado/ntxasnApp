Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :rides
    end 
  end 
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'welcome/home'
  get '/app', to: 'welcome#app', as: 'app'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
end
