Rails.application.routes.draw do

  namespace :admin do
  	get 'dashboard/main'

  	get 'dashboard/user'

  	get 'dashboard/blog'
  end

  get 'about', to:'pages#about' 

  get 'contact', to: 'pages#contact', as:"lead"

  resources :blogs

  resources :posts, except: [:show]

  get 'posts/*missing', to: 'posts#missing'

  get 'qmark/:else', to:'qmark#else'

  get 'qmark/:else/:something', to: 'qmark#else'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
