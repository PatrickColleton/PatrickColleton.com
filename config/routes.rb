Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'

  resources :posts do
    resources :comments
  end


  get '/welcome', to: 'welcome#index'
  get '/about', to: 'about#index'
  get '/download', to: 'download#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
